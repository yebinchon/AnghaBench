#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int boolean_t ;
struct TYPE_2__ {int used; int buffer; int len; int read_ptr; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  write_lock; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MAX_INT_DISABLED_FLUSH_SIZE ; 
 int MAX_TOTAL_FLUSH_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  console_output ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ console_ring ; 
 int /*<<< orphan*/  console_suspended ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  kernel_debugger_entry_count ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(void)
{
#ifdef __x86_64__
	boolean_t handle_tlb_flushes = (FUNC7() == FALSE);
#endif /* __x86_64__ */

	int nchars_out       = 0;
	int total_chars_out  = 0;
	int size_before_wrap = 0;

	do {
#ifdef __x86_64__
		if (handle_tlb_flushes)
			FUNC4();
#endif /* __x86_64__ */

		/*
		 * Try to get the read lock on the ring buffer to empty it.
		 * If this fails someone else is already emptying...
		 */
		if (!FUNC9(&console_ring.read_lock)) {
			/*
			 * If multiple cores are spinning trying to empty the buffer,
			 * we may suffer lock starvation (get the read lock, but
			 * never the write lock, with other cores unable to get the
			 * read lock).  As a result, insert a delay on failure, to
			 * let other cores have a turn.
			 */
			FUNC3(1);
			return;
		}

		boolean_t state = FUNC8(FALSE);

		/* Indicate that we're in the process of writing a block of data to the console. */
		(void)FUNC5(&console_output, 1);

		FUNC10(&console_ring.write_lock);

		/* try small chunk at a time, so we allow writes from other cpus into the buffer */
		nchars_out = FUNC0(console_ring.used, MAX_INT_DISABLED_FLUSH_SIZE);

		/* account for data to be read before wrap around */
		size_before_wrap = (int)((console_ring.buffer + console_ring.len) - console_ring.read_ptr);
		if (nchars_out > size_before_wrap)
			nchars_out = size_before_wrap;

		if (nchars_out > 0) {
			FUNC1(console_ring.read_ptr, nchars_out);
			console_ring.read_ptr =
			    console_ring.buffer + ((console_ring.read_ptr - console_ring.buffer + nchars_out) % console_ring.len);
			console_ring.used -= nchars_out;
			total_chars_out += nchars_out;
		}

		FUNC11(&console_ring.write_lock);

		(void)FUNC6(&console_output, 1);

		FUNC11(&console_ring.read_lock);

		FUNC2(state);

		/*
		 * In case we end up being the console drain thread
		 * for far too long, break out. Except in panic/suspend cases
		 * where we should clear out full buffer.
		 */
		if (!kernel_debugger_entry_count && !console_suspended && (total_chars_out >= MAX_TOTAL_FLUSH_SIZE))
			break;

	} while (nchars_out > 0);
}