#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
struct pipe_garbage {int pg_timestamp; struct pipe_garbage* pg_next; struct pipe_garbage* pg_pipe; int /*<<< orphan*/  pipe_state; } ;
struct pipe {int pg_timestamp; struct pipe* pg_next; struct pipe* pg_pipe; int /*<<< orphan*/  pipe_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIPE_DEAD ; 
 scalar_t__ PIPE_GARBAGE_QUEUE_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int pipe_garbage_age_limit ; 
 int /*<<< orphan*/  pipe_garbage_count ; 
 struct pipe_garbage* pipe_garbage_head ; 
 int /*<<< orphan*/  pipe_garbage_lock ; 
 struct pipe_garbage* pipe_garbage_tail ; 
 int /*<<< orphan*/  pipe_garbage_zone ; 
 int /*<<< orphan*/  pipe_zone ; 
 int /*<<< orphan*/  FUNC5 (char*,struct pipe_garbage*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct pipe_garbage*) ; 

__attribute__((used)) static void
FUNC8(struct pipe *cpipe)
{
	uint64_t old, now;
	struct pipe_garbage *pgp;

	/* Convert msecs to nsecs and then to abstime */
	old = pipe_garbage_age_limit * 1000000;
	FUNC3(old, &old);

	FUNC0(pipe_garbage_lock);

	/* Free anything that's been on the queue for <mumble> seconds */
	now = FUNC2();
	old = now - old;
	while ((pgp = pipe_garbage_head) && pgp->pg_timestamp < old) {
		pipe_garbage_head = pgp->pg_next;
		if (pipe_garbage_head == NULL)
			pipe_garbage_tail = NULL;
		pipe_garbage_count--;
		FUNC7(pipe_zone, pgp->pg_pipe);
		FUNC7(pipe_garbage_zone, pgp);
	}

	/* Add the new pipe (if any) to the tail of the garbage queue */
	if (cpipe) {
		cpipe->pipe_state = PIPE_DEAD;
		pgp = (struct pipe_garbage *)FUNC6(pipe_garbage_zone);
		if (pgp == NULL) {
			/*
			 * We're too low on memory to garbage collect the
			 * pipe.  Freeing it runs the risk of panicing the
			 * system.  All we can do is leak it and leave
			 * a breadcrumb behind.  The good news, such as it
			 * is, is that this will probably never happen.
			 * We will probably hit the panic below first.
			 */
			FUNC5("Leaking pipe %p - no room left in the queue",
			    cpipe);
			FUNC1(pipe_garbage_lock);
			return;
		}

		pgp->pg_pipe = cpipe;
		pgp->pg_timestamp = now;
		pgp->pg_next = NULL;

		if (pipe_garbage_tail)
			pipe_garbage_tail->pg_next = pgp;
		pipe_garbage_tail = pgp;
		if (pipe_garbage_head == NULL)
			pipe_garbage_head = pipe_garbage_tail;

		if (pipe_garbage_count++ >= PIPE_GARBAGE_QUEUE_LIMIT)
			FUNC4("Length of pipe garbage queue exceeded %d",
			    PIPE_GARBAGE_QUEUE_LIMIT);
	}
	FUNC1(pipe_garbage_lock);
}