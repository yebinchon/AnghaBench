#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct ifaddr {int /*<<< orphan*/ ** ifa_addr; } ;
typedef  int /*<<< orphan*/  sdlbuf ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  TYPE_1__* ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_6__ {int /*<<< orphan*/  sdl_len; } ;
struct TYPE_5__ {struct ifaddr* if_lladdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ **) ; 
 int SOCK_MAXADDRLEN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static errno_t
FUNC7(ifnet_t interface, void *lladdr,
    size_t lladdr_len, kauth_cred_t *credp)
{
	const u_int8_t *bytes;
	size_t bytes_len;
	struct ifaddr *ifa;
	uint8_t sdlbuf[SOCK_MAXADDRLEN + 1];
	errno_t error = 0;

	/*
	 * Make sure to accomodate the largest possible
	 * size of SA(if_lladdr)->sa_len.
	 */
	FUNC3(sizeof (sdlbuf) == (SOCK_MAXADDRLEN + 1));

	if (interface == NULL || lladdr == NULL)
		return (EINVAL);

	ifa = interface->if_lladdr;
	FUNC0(ifa);
	FUNC4(*ifa->ifa_addr, &sdlbuf, FUNC2(ifa->ifa_addr)->sdl_len);
	FUNC1(ifa);

	bytes = FUNC6(FUNC2(&sdlbuf), &bytes_len, credp);
	if (bytes_len != lladdr_len) {
		FUNC5(lladdr, lladdr_len);
		error = EMSGSIZE;
	} else {
		FUNC4(bytes, lladdr, bytes_len);
	}

	return (error);
}