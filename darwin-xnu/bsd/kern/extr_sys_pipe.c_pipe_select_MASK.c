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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct TYPE_2__ {scalar_t__ cnt; } ;
struct pipe {int pipe_state; int /*<<< orphan*/  pipe_sel; TYPE_1__ pipe_buffer; struct pipe* pipe_peer; } ;
struct fileproc {scalar_t__ f_data; } ;

/* Variables and functions */
#define  FREAD 129 
#define  FWRITE 128 
 scalar_t__ FUNC0 (struct pipe*) ; 
 scalar_t__ PIPE_BUF ; 
 int PIPE_DIRECTW ; 
 int PIPE_DRAIN ; 
 int PIPE_EOF ; 
 int /*<<< orphan*/  FUNC1 (struct pipe*) ; 
 int PIPE_SEL ; 
 int /*<<< orphan*/  FUNC2 (struct pipe*) ; 
 int PIPE_WSELECT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct pipe*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct fileproc *fp, int which, void *wql, vfs_context_t ctx)
{
	struct pipe *rpipe = (struct pipe *)fp->f_data;
	struct pipe *wpipe;
	int    retnum = 0;

	if (rpipe == NULL || rpipe == (struct pipe *)-1)
	        return (retnum);

	FUNC1(rpipe);

	wpipe = rpipe->pipe_peer;
	

#if CONFIG_MACF
	/*
	 * XXX We should use a per thread credential here; minimally, the
	 * XXX process credential should have a persistent reference on it
	 * XXX before being passed in here.
	 */
	if (mac_pipe_check_select(vfs_context_ucred(ctx), rpipe, which)) {
		PIPE_UNLOCK(rpipe);
		return (0);
	}
#endif
        switch (which) {

        case FREAD:
		if ((rpipe->pipe_state & PIPE_DIRECTW) ||
		    (rpipe->pipe_buffer.cnt > 0) ||
		    (rpipe->pipe_state & (PIPE_DRAIN | PIPE_EOF))) {

		        retnum = 1;
		} else {
		        rpipe->pipe_state |= PIPE_SEL;
		        FUNC4(FUNC5(ctx), &rpipe->pipe_sel, wql);
		}
		break;

        case FWRITE:
		if (wpipe)
			wpipe->pipe_state |= PIPE_WSELECT;
		if (wpipe == NULL || (wpipe->pipe_state & (PIPE_DRAIN | PIPE_EOF)) ||
		    (((wpipe->pipe_state & PIPE_DIRECTW) == 0) &&
		     (FUNC0(wpipe) - wpipe->pipe_buffer.cnt) >= PIPE_BUF)) {

		        retnum = 1;
		} else {
		        wpipe->pipe_state |= PIPE_SEL;
			FUNC4(FUNC5(ctx), &wpipe->pipe_sel, wql);
		}
		break;
        case 0:
	        rpipe->pipe_state |= PIPE_SEL;
		FUNC4(FUNC5(ctx), &rpipe->pipe_sel, wql);
		break;
        }
	FUNC2(rpipe);

        return (retnum);
}