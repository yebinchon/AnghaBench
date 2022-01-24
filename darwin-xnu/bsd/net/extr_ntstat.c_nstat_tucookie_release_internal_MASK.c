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
struct nstat_tucookie {TYPE_1__* inp; } ;
struct TYPE_2__ {int /*<<< orphan*/  inp_nstat_refcnt; int /*<<< orphan*/  inp_socket; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nstat_tucookie*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WNT_RELEASE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nstat_malloc_tag ; 

__attribute__((used)) static void
FUNC4(
    struct nstat_tucookie *cookie,
    int				inplock)
{
	if (FUNC2(cookie->inp->inp_socket) == IPPROTO_UDP)
		FUNC0(&cookie->inp->inp_nstat_refcnt);
	FUNC3(cookie->inp, WNT_RELEASE, inplock);
	FUNC1(cookie, sizeof(*cookie), nstat_malloc_tag);
}