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
struct nstat_tucookie {int /*<<< orphan*/  pname; struct inpcb* inp; } ;
struct inpcb {int /*<<< orphan*/  inp_nstat_refcnt; TYPE_1__* inp_socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  last_pid; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  FUNC1 (struct nstat_tucookie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nstat_tucookie* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  WNT_ACQUIRE ; 
 scalar_t__ WNT_STOPUSING ; 
 int /*<<< orphan*/  FUNC5 (struct nstat_tucookie*,int) ; 
 scalar_t__ FUNC6 (struct inpcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nstat_malloc_tag ; 
 int /*<<< orphan*/  nstat_mtx ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct nstat_tucookie *
FUNC8(
    struct inpcb *inp,
    bool	  ref,
    bool	  locked)
{
	struct nstat_tucookie *cookie;

	cookie = FUNC3(sizeof(*cookie), nstat_malloc_tag);
	if (cookie == NULL)
		return NULL;
	if (!locked)
		FUNC0(&nstat_mtx, LCK_MTX_ASSERT_NOTOWNED);
	if (ref && FUNC6(inp, WNT_ACQUIRE, locked) == WNT_STOPUSING)
	{
		FUNC1(cookie, sizeof(*cookie), nstat_malloc_tag);
		return NULL;
	}
	FUNC5(cookie, sizeof(*cookie));
	cookie->inp = inp;
	FUNC7(inp->inp_socket->last_pid, cookie->pname,
	    sizeof(cookie->pname));
	/*
	 * We only increment the reference count for UDP sockets because we
	 * only cache UDP socket tuples.
	 */
	if (FUNC4(inp->inp_socket) == IPPROTO_UDP)
		FUNC2(&inp->inp_nstat_refcnt);

	return cookie;
}