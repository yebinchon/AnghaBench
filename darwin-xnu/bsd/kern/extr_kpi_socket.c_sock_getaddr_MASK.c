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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/ * socket_t ;
typedef  int errno_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct sockaddr**,int) ; 

errno_t
FUNC3(socket_t sock, struct sockaddr **psa, int peer)
{
	int error;

	if (sock == NULL || psa == NULL)
		return (EINVAL);

	FUNC0(sock, 1);
	error = FUNC2(sock, psa, peer);
	FUNC1(sock, 1);

	return (error);
}