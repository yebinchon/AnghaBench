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
struct pipe {int pipe_state; int /*<<< orphan*/  pipe_pgid; TYPE_1__ pipe_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_RWBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int PIPE_ASYNC ; 
 int PIPE_KNOTE ; 
 int PIPE_SEL ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(struct pipe *cpipe, struct pipe *spipe)
{
	if (cpipe->pipe_state & PIPE_SEL) {
		cpipe->pipe_state &= ~PIPE_SEL;
		FUNC4(&cpipe->pipe_sel);
	}
        if (cpipe->pipe_state & PIPE_KNOTE) 
	       FUNC0(&cpipe->pipe_sel.si_note, 1);

	FUNC2(cpipe, EV_RWBYTES);

	if (spipe && (spipe->pipe_state & PIPE_ASYNC) && spipe->pipe_pgid) {
	        if (spipe->pipe_pgid < 0)
		        FUNC1(-spipe->pipe_pgid, SIGIO);
		else 
		        FUNC3(spipe->pipe_pgid, SIGIO);
        }
}