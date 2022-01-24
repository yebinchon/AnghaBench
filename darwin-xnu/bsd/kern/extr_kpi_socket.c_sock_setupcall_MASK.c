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
typedef  int /*<<< orphan*/ * socket_t ;
typedef  int /*<<< orphan*/ * sock_upcall ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

errno_t
FUNC3(socket_t sock, sock_upcall callback, void *context)
{
	if (sock == NULL)
		return (EINVAL);

	/*
	 * Note that we don't wait for any in progress upcall to complete.
	 * On embedded, sock_setupcall() causes both read and write
	 * callbacks to be set; on desktop, only read callback is set
	 * to maintain legacy KPI behavior.
	 *
	 * The newer sock_setupcalls() KPI should be used instead to set
	 * the read and write callbacks and their respective parameters.
	 */
	FUNC1(sock, 1);
#if CONFIG_EMBEDDED
	sock_setupcalls_locked(sock, callback, context, callback, context, 0);
#else
	FUNC0(sock, callback, context, NULL, NULL, 0);
#endif /* !CONFIG_EMBEDDED */
	FUNC2(sock, 1);

	return (0);
}