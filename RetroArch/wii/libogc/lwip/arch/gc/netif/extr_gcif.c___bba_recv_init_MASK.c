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

/* Variables and functions */
 int /*<<< orphan*/  BBA_BP ; 
 scalar_t__ BBA_GCA ; 
 int BBA_GCA_ARXERRB ; 
 int /*<<< orphan*/  BBA_INIT_BP ; 
 int /*<<< orphan*/  BBA_INIT_RHBP ; 
 int /*<<< orphan*/  BBA_INIT_RRP ; 
 int /*<<< orphan*/  BBA_INIT_RWP ; 
 int /*<<< orphan*/  BBA_INIT_TLBP ; 
 scalar_t__ BBA_MISC2 ; 
 int BBA_MISC2_AUTORCVR ; 
 scalar_t__ BBA_NCRA ; 
 int BBA_NCRA_SR ; 
 scalar_t__ BBA_NCRB ; 
 int BBA_NCRB_2_PACKETS_PER_INT ; 
 int BBA_NCRB_AB ; 
 int BBA_NCRB_CA ; 
 int /*<<< orphan*/  BBA_RHBP ; 
 int /*<<< orphan*/  BBA_RRP ; 
 int /*<<< orphan*/  BBA_RWP ; 
 scalar_t__ BBA_RXINTT ; 
 scalar_t__ BBA_SI_ACTRL2 ; 
 int /*<<< orphan*/  BBA_TLBP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC2()
{
	FUNC1(BBA_NCRB,(BBA_NCRB_AB|BBA_NCRB_CA|BBA_NCRB_2_PACKETS_PER_INT));
	FUNC1(BBA_SI_ACTRL2,0x74);
	FUNC1(BBA_RXINTT, 0x00);
	FUNC1(BBA_RXINTT+1, 0x06); /* 0x0600 = 61us */

	FUNC1(BBA_MISC2,BBA_MISC2_AUTORCVR);

	FUNC0(BBA_TLBP, BBA_INIT_TLBP);
	FUNC0(BBA_BP,BBA_INIT_BP);
	FUNC0(BBA_RHBP,BBA_INIT_RHBP);
	FUNC0(BBA_RWP,BBA_INIT_RWP);
	FUNC0(BBA_RRP,BBA_INIT_RRP);

	FUNC1(BBA_GCA,BBA_GCA_ARXERRB);
	FUNC1(BBA_NCRA,BBA_NCRA_SR);
}