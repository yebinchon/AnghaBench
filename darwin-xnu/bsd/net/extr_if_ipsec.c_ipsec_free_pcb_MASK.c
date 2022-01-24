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
struct ipsec_pcb {int /*<<< orphan*/  ipsec_pcb_lock; int /*<<< orphan*/  ipsec_input_chain_lock; int /*<<< orphan*/  ipsec_input_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ipsec_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipsec_chain ; 
 int /*<<< orphan*/  ipsec_head ; 
 int /*<<< orphan*/  ipsec_lck_grp ; 
 int /*<<< orphan*/  ipsec_lock ; 
 int /*<<< orphan*/  ipsec_pcb_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ipsec_pcb*) ; 

__attribute__((used)) static inline void
FUNC7(struct ipsec_pcb *pcb, bool in_list)
{
#if IPSEC_NEXUS
	mbuf_freem_list(pcb->ipsec_input_chain);
	lck_mtx_destroy(&pcb->ipsec_input_chain_lock, ipsec_lck_grp);
#endif // IPSEC_NEXUS
	FUNC4(&pcb->ipsec_pcb_lock, ipsec_lck_grp);
	if (in_list) {
		FUNC2(&ipsec_lock);
		FUNC0(&ipsec_head, pcb, ipsec_chain);
		FUNC3(&ipsec_lock);
	}
	FUNC6(ipsec_pcb_zone, pcb);
}