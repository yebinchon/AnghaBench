#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr_dl {size_t sdl_alen; int /*<<< orphan*/  sdl_type; } ;
struct ifaddr {scalar_t__ ifa_addr; } ;
typedef  TYPE_1__* ifnet_t ;
typedef  scalar_t__ errno_t ;
struct TYPE_7__ {size_t if_addrlen; int if_index; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  INTF_EVENT_CODE_LLADDR_UPDATE ; 
 int /*<<< orphan*/  KEV_DL_LINK_ADDRESS_CHANGED ; 
 int /*<<< orphan*/  KEV_DL_SUBCLASS ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC3 (void const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ifaddr** ifnet_addrs ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static errno_t
FUNC11(ifnet_t interface, const void *lladdr,
    size_t lladdr_len, u_char new_type, int apply_type)
{
	struct ifaddr *ifa;
	errno_t	error = 0;

	if (interface == NULL)
		return (EINVAL);

	FUNC7();
	FUNC9(interface);
	if (lladdr_len != 0 &&
	    (lladdr_len != interface->if_addrlen || lladdr == 0)) {
		FUNC8(interface);
		FUNC6();
		return (EINVAL);
	}
	ifa = ifnet_addrs[interface->if_index - 1];
	if (ifa != NULL) {
		struct sockaddr_dl *sdl;

		FUNC0(ifa);
		sdl = (struct sockaddr_dl *)(void *)ifa->ifa_addr;
		if (lladdr_len != 0) {
			FUNC3(lladdr, FUNC2(sdl), lladdr_len);
		} else {
			FUNC4(FUNC2(sdl), interface->if_addrlen);
		}
		sdl->sdl_alen = lladdr_len;

		if (apply_type) {
			sdl->sdl_type = new_type;
		}
		FUNC1(ifa);
	} else {
		error = ENXIO;
	}
	FUNC8(interface);
	FUNC6();

	/* Generate a kernel event */
	if (error == 0) {
		FUNC10(interface, NULL,
		    INTF_EVENT_CODE_LLADDR_UPDATE);
		FUNC5(interface, KEV_DL_SUBCLASS,
		    KEV_DL_LINK_ADDRESS_CHANGED, NULL, 0);
	}

	return (error);
}