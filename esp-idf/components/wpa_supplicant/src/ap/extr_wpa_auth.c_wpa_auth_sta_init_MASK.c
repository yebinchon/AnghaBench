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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_state_machine {int /*<<< orphan*/  group; struct wpa_authenticator* wpa_auth; int /*<<< orphan*/  addr; } ;
struct wpa_authenticator {int /*<<< orphan*/  group; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_state_machine*) ; 

struct wpa_state_machine * 
FUNC3(struct wpa_authenticator *wpa_auth, const u8 *addr)
{
    struct wpa_state_machine *sm;

    sm = (struct wpa_state_machine *)FUNC1(sizeof(struct wpa_state_machine));
    if (sm == NULL)
        return NULL;
    FUNC0(sm->addr, addr, ETH_ALEN);

    sm->wpa_auth = wpa_auth;
    sm->group = wpa_auth->group;
    FUNC2(sm);

    return sm;
}