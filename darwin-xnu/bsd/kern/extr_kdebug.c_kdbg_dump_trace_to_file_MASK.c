#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct TYPE_4__ {int debugid; size_t arg1; int arg2; int /*<<< orphan*/  arg5; } ;
typedef  TYPE_1__ kd_buf ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_5__ {scalar_t__ enabled; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int KDEBUG_ENABLE_TRACE ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int O_CREAT ; 
 int O_NOFOLLOW ; 
 int /*<<< orphan*/  RAW_VERSION1 ; 
 int /*<<< orphan*/  RAW_file_offset ; 
 int TRACE_WRITING_EVENTS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__ kd_ctrl_page ; 
 int FUNC6 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int kdebug_enable ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int nkdbufs ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC19(const char *filename)
{
	vfs_context_t ctx;
	vnode_t vp;
	size_t write_size;
	int ret;

	FUNC12();

	if (!(kdebug_enable & KDEBUG_ENABLE_TRACE)) {
		goto out;
	}

	if (FUNC11() != 0) {
		/*
		 * Another process owns ktrace and is still active, disable tracing to
		 * prevent wrapping.
		 */
		kdebug_enable = 0;
		kd_ctrl_page.enabled = 0;
		FUNC2();
		goto out;
	}

	FUNC0(TRACE_WRITING_EVENTS | DBG_FUNC_START);

	kdebug_enable = 0;
	kd_ctrl_page.enabled = 0;
	FUNC2();

	ctx = FUNC16();

	if (FUNC18(filename, (O_CREAT | FWRITE | O_NOFOLLOW), 0600, 0, &vp, ctx)) {
		goto out;
	}

	FUNC9(vp, ctx);

	write_size = nkdbufs * sizeof(kd_buf);
	ret = FUNC6(0, &write_size, vp, ctx, RAW_VERSION1);
	if (ret) {
		goto out_close;
	}

	/*
	 * Wait to synchronize the file to capture the I/O in the
	 * TRACE_WRITING_EVENTS interval.
	 */
	ret = FUNC1(vp, MNT_WAIT, ctx);

	/*
	 * Balance the starting TRACE_WRITING_EVENTS tracepoint manually.
	 */
	kd_buf end_event = {
		.debugid = TRACE_WRITING_EVENTS | DBG_FUNC_END,
		.arg1 = write_size,
		.arg2 = ret,
		.arg5 = FUNC15(FUNC5()),
	};
	FUNC7(&end_event, FUNC8(),
			FUNC3());

	/* this is best effort -- ignore any errors */
	(void)FUNC10((caddr_t)&end_event, sizeof(kd_buf), vp, ctx,
			RAW_file_offset);

out_close:
	FUNC17(vp, FWRITE, ctx);
	FUNC14(FUNC4(), (void *)NULL, (int *)NULL);

out:
	FUNC13();
}