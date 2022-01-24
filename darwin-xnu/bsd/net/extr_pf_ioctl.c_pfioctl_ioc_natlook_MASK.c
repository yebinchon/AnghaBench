#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct proc {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  port; } ;
struct pfioc_natlook {int direction; TYPE_7__ sxport; int /*<<< orphan*/  rsxport; int /*<<< orphan*/  af; int /*<<< orphan*/  saddr; int /*<<< orphan*/  rsaddr; int /*<<< orphan*/  rdxport; int /*<<< orphan*/  rdaddr; TYPE_7__ dxport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  proto; int /*<<< orphan*/  proto_variant; } ;
struct TYPE_11__ {int /*<<< orphan*/  xport; int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  xport; int /*<<< orphan*/  addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  xport; int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  xport; int /*<<< orphan*/  addr; } ;
struct pf_state_key_cmp {TYPE_4__ ext_lan; TYPE_3__ lan; int /*<<< orphan*/  af_lan; TYPE_2__ gwy; TYPE_1__ ext_gwy; int /*<<< orphan*/  af_gwy; int /*<<< orphan*/  proto_variant; int /*<<< orphan*/  proto; } ;
struct TYPE_13__ {TYPE_7__ xport; int /*<<< orphan*/  addr; } ;
struct TYPE_12__ {TYPE_7__ xport; int /*<<< orphan*/  addr; } ;
struct pf_state_key {TYPE_6__ gwy; int /*<<< orphan*/  af_gwy; TYPE_5__ lan; int /*<<< orphan*/  af_lan; } ;
struct pf_state {struct pf_state_key* state_key; } ;

/* Variables and functions */
#define  DIOCNATLOOK 128 
 int E2BIG ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PF_IN ; 
 int PF_OUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_7__*,int) ; 
 struct pf_state* FUNC4 (struct pf_state_key_cmp*,int,int*) ; 

__attribute__((used)) static int
FUNC5(u_long cmd, struct pfioc_natlook *pnl, struct proc *p)
{
#pragma unused(p)
	int error = 0;

	switch (cmd) {
	case DIOCNATLOOK: {
		struct pf_state_key	*sk;
		struct pf_state		*state;
		struct pf_state_key_cmp	 key;
		int			 m = 0, direction = pnl->direction;

		key.proto = pnl->proto;
		key.proto_variant = pnl->proto_variant;

		if (!pnl->proto ||
		    FUNC1(&pnl->saddr, pnl->af) ||
		    FUNC1(&pnl->daddr, pnl->af) ||
		    ((pnl->proto == IPPROTO_TCP ||
		    pnl->proto == IPPROTO_UDP) &&
		    (!pnl->dxport.port || !pnl->sxport.port)))
			error = EINVAL;
		else {
			/*
			 * userland gives us source and dest of connection,
			 * reverse the lookup so we ask for what happens with
			 * the return traffic, enabling us to find it in the
			 * state tree.
			 */
			if (direction == PF_IN) {
				key.af_gwy = pnl->af;
				FUNC0(&key.ext_gwy.addr, &pnl->daddr,
					pnl->af);
				FUNC3(&key.ext_gwy.xport, &pnl->dxport,
				    sizeof (key.ext_gwy.xport));
				FUNC0(&key.gwy.addr, &pnl->saddr, pnl->af);
				FUNC3(&key.gwy.xport, &pnl->sxport,
				    sizeof (key.gwy.xport));
				state = FUNC4(&key, PF_IN, &m);
			} else {
				key.af_lan = pnl->af;
				FUNC0(&key.lan.addr, &pnl->daddr, pnl->af);
				FUNC3(&key.lan.xport, &pnl->dxport,
				    sizeof (key.lan.xport));
				FUNC0(&key.ext_lan.addr, &pnl->saddr,
					pnl->af);
				FUNC3(&key.ext_lan.xport, &pnl->sxport,
				    sizeof (key.ext_lan.xport));
				state = FUNC4(&key, PF_OUT, &m);
			}
			if (m > 1)
				error = E2BIG;	/* more than one state */
			else if (state != NULL) {
				sk = state->state_key;
				if (direction == PF_IN) {
					FUNC0(&pnl->rsaddr, &sk->lan.addr,
					    sk->af_lan);
					FUNC3(&pnl->rsxport, &sk->lan.xport,
					    sizeof (pnl->rsxport));
					FUNC0(&pnl->rdaddr, &pnl->daddr,
					    pnl->af);
					FUNC3(&pnl->rdxport, &pnl->dxport,
					    sizeof (pnl->rdxport));
				} else {
					FUNC0(&pnl->rdaddr, &sk->gwy.addr,
					    sk->af_gwy);
					FUNC3(&pnl->rdxport, &sk->gwy.xport,
					    sizeof (pnl->rdxport));
					FUNC0(&pnl->rsaddr, &pnl->saddr,
					    pnl->af);
					FUNC3(&pnl->rsxport, &pnl->sxport,
					    sizeof (pnl->rsxport));
				}
			} else
				error = ENOENT;
		}
		break;
	}

	default:
		FUNC2(0);
		/* NOTREACHED */
	}

	return (error);
}