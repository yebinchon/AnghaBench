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
typedef  int /*<<< orphan*/  net_thread_marks_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  NET_THREAD_CKREQ_LLADDR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

errno_t
FUNC6(ifnet_t interface, void *lladdr, size_t length)
{
#if CONFIG_MACF
	kauth_cred_t cred;
	net_thread_marks_t marks;
#endif
	kauth_cred_t *credp;
	errno_t error;

	credp = NULL;
#if CONFIG_MACF
	marks = net_thread_marks_push(NET_THREAD_CKREQ_LLADDR);
	cred = kauth_cred_proc_ref(current_proc());
	credp = &cred;
#else
	credp = NULL;
#endif

	error = FUNC1(interface, lladdr, length,
	    credp);

#if CONFIG_MACF
	kauth_cred_unref(credp);
	net_thread_marks_pop(marks);
#endif

	return (error);
}