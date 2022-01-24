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
struct sockaddr {int sa_len; } ;
typedef  int /*<<< orphan*/ * socket_t ;
typedef  int errno_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sockaddr**,int /*<<< orphan*/ ) ; 

errno_t
FUNC5(socket_t sock, struct sockaddr	*sockname, int socknamelen)
{
	int error;
	struct sockaddr	*sa = NULL;

	if (sock == NULL || sockname == NULL || socknamelen < 0)
		return (EINVAL);

	FUNC2(sock, 1);
	error = FUNC4(sock, &sa, 0);
	FUNC3(sock, 1);
	if (error == 0) {
		if (socknamelen > sa->sa_len)
			socknamelen = sa->sa_len;
		FUNC1(sockname, sa, socknamelen);
		FUNC0(sa, M_SONAME);
	}
	return (error);
}