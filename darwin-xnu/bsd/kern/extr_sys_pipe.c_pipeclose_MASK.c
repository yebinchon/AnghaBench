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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct pipe {int pipe_state; struct pipe* pipe_peer; TYPE_1__ pipe_sel; int /*<<< orphan*/ * pipe_label; scalar_t__ pipe_busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_RCLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int PIPE_DRAIN ; 
 int PIPE_EOF ; 
 int PIPE_KNOTE ; 
 int /*<<< orphan*/  FUNC1 (struct pipe*) ; 
 int /*<<< orphan*/ * FUNC2 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct pipe*) ; 
 int PIPE_WANT ; 
 int PIPE_WSELECT ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC4 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC7 (struct pipe*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC9 (struct pipe*) ; 
 int /*<<< orphan*/  pipe_mtx_grp ; 
 int /*<<< orphan*/  pipe_zone ; 
 int /*<<< orphan*/  FUNC10 (struct pipe*,struct pipe*) ; 
 int /*<<< orphan*/  FUNC11 (struct pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct pipe*) ; 

__attribute__((used)) static void
FUNC14(struct pipe *cpipe)
{
	struct pipe *ppipe;

	if (cpipe == NULL)
		return;
	/* partially created pipes won't have a valid mutex. */
	if (FUNC2(cpipe) != NULL)
		FUNC1(cpipe);
		

	/*
	 * If the other side is blocked, wake it up saying that
	 * we want to close it down.
	 */
	cpipe->pipe_state &= ~PIPE_DRAIN;
	cpipe->pipe_state |= PIPE_EOF;
	FUNC10(cpipe, cpipe);
	
	while (cpipe->pipe_busy) {
		cpipe->pipe_state |= PIPE_WANT;

		FUNC12(cpipe);
 		FUNC7(cpipe, FUNC2(cpipe), PRIBIO, "pipecl", 0);
	}

#if CONFIG_MACF
	/*
	 * Free the shared pipe label only after the two ends are disconnected.
	 */
	if (cpipe->pipe_label != NULL && cpipe->pipe_peer == NULL)
		mac_pipe_label_destroy(cpipe);
#endif

	/*
	 * Disconnect from peer
	 */
	if ((ppipe = cpipe->pipe_peer) != NULL) {

		ppipe->pipe_state &= ~(PIPE_DRAIN);
		ppipe->pipe_state |= PIPE_EOF;

		FUNC10(ppipe, ppipe);
		FUNC12(ppipe);

		if (cpipe->pipe_state & PIPE_KNOTE)
		        FUNC0(&ppipe->pipe_sel.si_note, 1);

		FUNC11(ppipe, EV_RCLOSED);

		ppipe->pipe_peer = NULL;
	}
	FUNC4(cpipe);

	/*
	 * free resources
	 */
	if (FUNC2(cpipe) != NULL) {
		if (ppipe != NULL) {
			/*
			 * since the mutex is shared and the peer is still
			 * alive, we need to release the mutex, not free it
			 */
			FUNC3(cpipe);
		} else {
			/*
			 * peer is gone, so we're the sole party left with
			 * interest in this mutex... unlock and free it
			 */
			FUNC3(cpipe);
			FUNC5(FUNC2(cpipe), pipe_mtx_grp);
		}
	}
	FUNC8(cpipe);
	if (cpipe->pipe_state & PIPE_WSELECT) {
		FUNC9(cpipe);
	} else {
		FUNC13(pipe_zone, cpipe);
		FUNC9(NULL);
	}

}