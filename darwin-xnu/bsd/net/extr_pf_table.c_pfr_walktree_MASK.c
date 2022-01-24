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
struct radix_node {int dummy; } ;
struct pfr_walktree {int pfrw_flags; int pfrw_op; int pfrw_addr; int pfrw_astats; TYPE_1__* pfrw_dyn; struct pfr_kentry* pfrw_kentry; int /*<<< orphan*/  pfrw_cnt; int /*<<< orphan*/  pfrw_free; int /*<<< orphan*/  pfrw_workq; } ;
struct pfr_kentry {int /*<<< orphan*/  pfrke_sa; int /*<<< orphan*/  pfrke_net; int /*<<< orphan*/  pfrke_af; int /*<<< orphan*/  pfrke_not; int /*<<< orphan*/  pfrke_tzero; int /*<<< orphan*/  pfrke_bytes; int /*<<< orphan*/  pfrke_packets; int /*<<< orphan*/  pfrke_mark; } ;
struct pfr_addr {int dummy; } ;
struct pfr_astats {int /*<<< orphan*/  pfras_tzero; int /*<<< orphan*/  pfras_bytes; int /*<<< orphan*/  pfras_packets; int /*<<< orphan*/  _pad; struct pfr_addr pfras_a; } ;
typedef  int /*<<< orphan*/  as ;
typedef  int /*<<< orphan*/  ad ;
struct TYPE_2__ {void* pfid_mask6; void* pfid_addr6; int /*<<< orphan*/  pfid_acnt6; void* pfid_mask4; void* pfid_addr4; int /*<<< orphan*/  pfid_acnt4; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct pfr_astats*,int,int,int) ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
#define  PFRW_DYNADDR_UPDATE 134 
#define  PFRW_ENQUEUE 133 
#define  PFRW_GET_ADDRS 132 
#define  PFRW_GET_ASTATS 131 
#define  PFRW_MARK 130 
#define  PFRW_POOL_GET 129 
#define  PFRW_SWEEP 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pfr_kentry*,int /*<<< orphan*/ ) ; 
 void** FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pfr_addr*,int,int) ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  FUNC6 (struct pfr_addr*,struct pfr_kentry*) ; 
 int /*<<< orphan*/  pfr_mask ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfrke_workq ; 

__attribute__((used)) static int
FUNC8(struct radix_node *rn, void *arg)
{
	struct pfr_kentry	*ke = (struct pfr_kentry *)rn;
	struct pfr_walktree	*w = arg;
	int			 flags = w->pfrw_flags;

	FUNC1(pf_lock, LCK_MTX_ASSERT_OWNED);

	switch (w->pfrw_op) {
	case PFRW_MARK:
		ke->pfrke_mark = 0;
		break;
	case PFRW_SWEEP:
		if (ke->pfrke_mark)
			break;
		/* FALLTHROUGH */
	case PFRW_ENQUEUE:
		FUNC2(w->pfrw_workq, ke, pfrke_workq);
		w->pfrw_cnt++;
		break;
	case PFRW_GET_ADDRS:
		if (w->pfrw_free-- > 0) {
			struct pfr_addr ad;

			FUNC6(&ad, ke);
			if (FUNC5(&ad, w->pfrw_addr, sizeof (ad)))
				return (EFAULT);
			w->pfrw_addr += sizeof (ad);
		}
		break;
	case PFRW_GET_ASTATS:
		if (w->pfrw_free-- > 0) {
			struct pfr_astats as;

			FUNC6(&as.pfras_a, ke);

#if !defined(__LP64__)
			/* Initialized to avoid potential info leak to
			 * userspace */
			as._pad = 0;
#endif
			FUNC4(ke->pfrke_packets, as.pfras_packets,
			    sizeof (as.pfras_packets));
			FUNC4(ke->pfrke_bytes, as.pfras_bytes,
			    sizeof (as.pfras_bytes));
			as.pfras_tzero = ke->pfrke_tzero;

			if (FUNC0(&as, w->pfrw_astats, sizeof (as), flags))
				return (EFAULT);
			w->pfrw_astats += sizeof (as);
		}
		break;
	case PFRW_POOL_GET:
		if (ke->pfrke_not)
			break; /* negative entries are ignored */
		if (!w->pfrw_cnt--) {
			w->pfrw_kentry = ke;
			return (1); /* finish search */
		}
		break;
	case PFRW_DYNADDR_UPDATE:
		if (ke->pfrke_af == AF_INET) {
			if (w->pfrw_dyn->pfid_acnt4++ > 0)
				break;
			FUNC7(&pfr_mask, AF_INET, ke->pfrke_net);
			w->pfrw_dyn->pfid_addr4 = *FUNC3(
			    &ke->pfrke_sa, AF_INET);
			w->pfrw_dyn->pfid_mask4 = *FUNC3(
			    &pfr_mask, AF_INET);
		} else if (ke->pfrke_af == AF_INET6) {
			if (w->pfrw_dyn->pfid_acnt6++ > 0)
				break;
			FUNC7(&pfr_mask, AF_INET6, ke->pfrke_net);
			w->pfrw_dyn->pfid_addr6 = *FUNC3(
			    &ke->pfrke_sa, AF_INET6);
			w->pfrw_dyn->pfid_mask6 = *FUNC3(
			    &pfr_mask, AF_INET6);
		}
		break;
	}
	return (0);
}