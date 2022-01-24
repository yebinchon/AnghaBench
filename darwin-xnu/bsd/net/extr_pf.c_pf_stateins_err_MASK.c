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
struct pfi_kif {char* pfik_name; } ;
struct pf_state_key {int proto; int /*<<< orphan*/  proto_variant; int /*<<< orphan*/  af_gwy; int /*<<< orphan*/  ext_gwy; int /*<<< orphan*/  af_lan; int /*<<< orphan*/  ext_lan; int /*<<< orphan*/  gwy; int /*<<< orphan*/  lan; } ;
struct pf_state {int sync_flags; struct pf_state_key* state_key; } ;
struct TYPE_2__ {scalar_t__ debug; } ;

/* Variables and functions */
#define  IPPROTO_ICMP 131 
#define  IPPROTO_ICMPV6 130 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int PFSTATE_FROMSYNC ; 
 scalar_t__ PF_DEBUG_MISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ pf_status ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const char *tree, struct pf_state *s, struct pfi_kif *kif)
{
	struct pf_state_key	*sk = s->state_key;

	if (pf_status.debug >= PF_DEBUG_MISC) {
		FUNC1("pf: state insert failed: %s %s ", tree, kif->pfik_name);
		switch (sk->proto) {
		case IPPROTO_TCP:
			FUNC1("TCP");
			break;
		case IPPROTO_UDP:
			FUNC1("UDP");
			break;
		case IPPROTO_ICMP:
			FUNC1("ICMP4");
			break;
		case IPPROTO_ICMPV6:
			FUNC1("ICMP6");
			break;
		default:
			FUNC1("PROTO=%u", sk->proto);
			break;
		}
		FUNC1(" lan: ");
		FUNC0(&sk->lan, sk->af_lan, sk->proto,
		    sk->proto_variant);
		FUNC1(" gwy: ");
		FUNC0(&sk->gwy, sk->af_gwy, sk->proto,
		    sk->proto_variant);
		FUNC1(" ext_lan: ");
		FUNC0(&sk->ext_lan, sk->af_lan, sk->proto,
		    sk->proto_variant);
		FUNC1(" ext_gwy: ");
		FUNC0(&sk->ext_gwy, sk->af_gwy, sk->proto,
		    sk->proto_variant);
		if (s->sync_flags & PFSTATE_FROMSYNC)
			FUNC1(" (from sync)");
		FUNC1("\n");
	}
}