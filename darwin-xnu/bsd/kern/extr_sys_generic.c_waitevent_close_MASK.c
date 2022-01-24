#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct eventqelt* tqh_first; } ;
struct socket {TYPE_2__ so_evlist; } ;
struct proc {int dummy; } ;
struct pipe {TYPE_2__ pipe_evlist; } ;
struct fileproc {scalar_t__ f_type; scalar_t__ f_data; int /*<<< orphan*/  f_flags; } ;
struct TYPE_3__ {struct eventqelt* tqe_next; } ;
struct eventqelt {struct proc* ee_proc; TYPE_1__ ee_slist; } ;

/* Variables and functions */
 scalar_t__ DTYPE_PIPE ; 
 scalar_t__ DTYPE_SOCKET ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,struct eventqelt*) ; 
 int /*<<< orphan*/  FP_WAITEVENT ; 
 int /*<<< orphan*/  FUNC1 (struct eventqelt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC2 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct pipe*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct eventqelt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ee_slist ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,int) ; 

int
FUNC9(struct proc *p, struct fileproc *fp)
{
	struct eventqelt *evq;


	fp->f_flags &= ~FP_WAITEVENT;

#if SOCKETS
	if (fp->f_type == DTYPE_SOCKET) {
	        socket_lock((struct socket *)fp->f_data, 1);
		evq = ((struct socket *)fp->f_data)->so_evlist.tqh_first;
	} else
#endif /* SOCKETS */
	if (fp->f_type == DTYPE_PIPE) {
	        FUNC2((struct pipe *)fp->f_data);
		evq = ((struct pipe *)fp->f_data)->pipe_evlist.tqh_first;
	}
	else {
		return(EINVAL);
	}
	FUNC6(p);


	// locate event if possible
	for ( ; evq != NULL; evq = evq->ee_slist.tqe_next) {
	        if (evq->ee_proc == p)
		        break;
	}
	if (evq == NULL) {
#if SOCKETS
	        if (fp->f_type == DTYPE_SOCKET) 
		        socket_unlock((struct socket *)fp->f_data, 1);
		else 
#endif /* SOCKETS */
		        FUNC3((struct pipe *)fp->f_data);

		FUNC5(p);

		return(EINVAL);
	}
	FUNC0(p, evq);

#if SOCKETS
	if (fp->f_type == DTYPE_SOCKET) {
		TAILQ_REMOVE(&((struct socket *)fp->f_data)->so_evlist, evq, ee_slist);
		socket_unlock((struct socket *)fp->f_data, 1);
	} else
#endif /* SOCKETS */
	{
		FUNC4(&((struct pipe *)fp->f_data)->pipe_evlist, evq, ee_slist);
		FUNC3((struct pipe *)fp->f_data);
	}
	FUNC1(evq, M_TEMP);

	FUNC5(p);

	return(0);
}