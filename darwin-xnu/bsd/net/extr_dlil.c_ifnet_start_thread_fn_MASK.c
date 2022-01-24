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
typedef  int /*<<< orphan*/  wait_result_t ;
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  thread_name ;
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct thread {int dummy; } ;
struct ifclassq {int dummy; } ;
struct ifnet {char* if_xname; int if_start_active; scalar_t__ if_start_req; int if_eflags; int if_start_delayed; scalar_t__ if_start_delay_qlen; int if_start_flags; scalar_t__ if_start_delay_timeout; struct timespec if_start_cycle; int /*<<< orphan*/  if_start_lock; int /*<<< orphan*/  (* if_start ) (struct ifnet*) ;struct thread* if_start_thread; struct ifclassq if_snd; } ;
struct dlil_threading_info {scalar_t__ tag; int /*<<< orphan*/  input_lck; struct thread* wloop_thr; struct thread* poll_thr; scalar_t__ net_affinity; } ;
typedef  int /*<<< orphan*/  ifname ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 scalar_t__ FUNC1 (struct ifclassq*) ; 
 scalar_t__ FUNC2 (struct ifclassq*) ; 
 int IFEF_DELAY_START ; 
 int IFEF_ENQUEUE_MULTI ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int IFSF_FLOW_CONTROLLED ; 
 int MAXTHREADNAMESIZE ; 
 int PSPIN ; 
 int PZERO ; 
 struct thread* THREAD_NULL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 struct thread* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,scalar_t__) ; 
 struct dlil_threading_info* dlil_main_input_thread ; 
 scalar_t__ dlil_verbose ; 
 char* FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ifnet_start_delayed ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct ifnet* lo_ifp ; 
 int /*<<< orphan*/  FUNC15 (struct thread**,int /*<<< orphan*/ *,int,char*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC19 (struct thread*) ; 
 int /*<<< orphan*/  FUNC20 (struct thread*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct thread*) ; 

__attribute__((used)) static void
FUNC22(void *v, wait_result_t w)
{
#pragma unused(w)
	struct ifnet *ifp = v;
	char ifname[IFNAMSIZ + 1];
	char thread_name[MAXTHREADNAMESIZE];
	struct timespec *ts = NULL;
	struct ifclassq *ifq = &ifp->if_snd;
	struct timespec delay_start_ts;

	/* Construct the name for this thread, and then apply it. */
	FUNC4(thread_name, sizeof(thread_name));
	(void) FUNC17(thread_name, sizeof (thread_name),
	    "ifnet_start_%s", ifp->if_xname);
	FUNC20(ifp->if_start_thread, thread_name);

	/*
	 * Treat the dedicated starter thread for lo0 as equivalent to
	 * the driver workloop thread; if net_affinity is enabled for
	 * the main input thread, associate this starter thread to it
	 * by binding them with the same affinity tag.  This is done
	 * only once (as we only have one lo_ifp which never goes away.)
	 */
	if (ifp == lo_ifp) {
		struct dlil_threading_info *inp = dlil_main_input_thread;
		struct thread *tp = FUNC5();

		FUNC12(&inp->input_lck);
		if (inp->net_affinity) {
			u_int32_t tag = inp->tag;

			FUNC3(inp->wloop_thr == THREAD_NULL);
			FUNC3(inp->poll_thr == THREAD_NULL);
			inp->wloop_thr = tp;
			FUNC14(&inp->input_lck);

			/* Associate this thread with the affinity tag */
			(void) FUNC6(tp, tag);
		} else {
			FUNC14(&inp->input_lck);
		}
	}

	(void) FUNC17(ifname, sizeof (ifname), "%s_starter", FUNC7(ifp));

	FUNC13(&ifp->if_start_lock);

	for (;;) {
		if (ifp->if_start_thread != NULL) {
			(void) FUNC15(&ifp->if_start_thread,
			    &ifp->if_start_lock,
			    (PZERO - 1) | PSPIN, ifname, ts);
		}
		/* interface is detached? */
		if (ifp->if_start_thread == THREAD_NULL) {
			FUNC11(ifp, NULL);
			FUNC14(&ifp->if_start_lock);
			FUNC10(ifp);

			if (dlil_verbose) {
				FUNC16("%s: starter thread terminated\n",
				    FUNC7(ifp));
			}

			/* for the extra refcnt from kernel_thread_start() */
			FUNC19(FUNC5());
			/* this is the end */
			FUNC21(FUNC5());
			/* NOTREACHED */
			return;
		}

		ifp->if_start_active = 1;

		for (;;) {
			u_int32_t req = ifp->if_start_req;
			if (!FUNC0(ifq) &&
			    (ifp->if_eflags & IFEF_ENQUEUE_MULTI) &&
			    ifp->if_start_delayed == 0 &&
			    FUNC1(ifq) < ifp->if_start_delay_qlen &&
			    (ifp->if_eflags & IFEF_DELAY_START)) {
				ifp->if_start_delayed = 1;
				ifnet_start_delayed++;
				break;
			} else {
				ifp->if_start_delayed = 0;
			}
			FUNC14(&ifp->if_start_lock);

			/*
			 * If no longer attached, don't call start because ifp
			 * is being destroyed; else hold an IO refcnt to
			 * prevent the interface from being detached (will be
			 * released below.)
			 */
			if (!FUNC9(ifp, 1)) {
				FUNC13(&ifp->if_start_lock);
				break;
			}

			/* invoke the driver's start routine */
			((*ifp->if_start)(ifp));

			/*
			 * Release the io ref count taken by ifnet_is_attached.
			 */
			FUNC8(ifp);

			FUNC13(&ifp->if_start_lock);

			/*
			 * If there's no pending request or if the
			 * interface has been disabled, we're done.
			 */
			if (req == ifp->if_start_req ||
			    (ifp->if_start_flags & IFSF_FLOW_CONTROLLED)) {
				break;
			}
		}

		ifp->if_start_req = 0;
		ifp->if_start_active = 0;

		/*
		 * Wakeup N ns from now if rate-controlled by TBR, and if
		 * there are still packets in the send queue which haven't
		 * been dequeued so far; else sleep indefinitely (ts = NULL)
		 * until ifnet_start() is called again.
		 */
		ts = ((FUNC2(ifq) && !FUNC0(ifq)) ?
		    &ifp->if_start_cycle : NULL);

		if (ts == NULL && ifp->if_start_delayed == 1) {
			delay_start_ts.tv_sec = 0;
			delay_start_ts.tv_nsec = ifp->if_start_delay_timeout;
			ts = &delay_start_ts;
		}

		if (ts != NULL && ts->tv_sec == 0 && ts->tv_nsec == 0)
			ts = NULL;
	}

	/* NOTREACHED */
}