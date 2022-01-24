#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int NatTraversalDraftIetf; void* MS_Vid_InitialContact; void* MS_NT5_ISAKMP_OAKLEY; void* MS_L2TPIPSecVPNClient; void* DpdRfc3706; void* NatTraversalRfc3947; } ;
typedef  int /*<<< orphan*/  IKE_PACKET ;
typedef  TYPE_1__ IKE_CAPS ;

/* Variables and functions */
 int /*<<< orphan*/  IKE_VENDOR_ID_IPSEC_NAT_T_IKE_00 ; 
 int /*<<< orphan*/  IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02 ; 
 int /*<<< orphan*/  IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02_2 ; 
 int /*<<< orphan*/  IKE_VENDOR_ID_IPSEC_NAT_T_IKE_03 ; 
 int /*<<< orphan*/  IKE_VENDOR_ID_MICROSOFT_L2TP ; 
 int /*<<< orphan*/  IKE_VENDOR_ID_MS_NT5_ISAKMPOAKLEY ; 
 int /*<<< orphan*/  IKE_VENDOR_ID_MS_VID_INITIALCONTACT ; 
 int /*<<< orphan*/  IKE_VENDOR_ID_RFC3706_DPD ; 
 int /*<<< orphan*/  IKE_VENDOR_ID_RFC3947_NAT_T ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

void FUNC2(IKE_CAPS *caps, IKE_PACKET *p)
{
	// Validate arguments
	if (caps == NULL || p == NULL)
	{
		FUNC1(caps, sizeof(IKE_CAPS));
		return;
	}

	FUNC1(caps, sizeof(IKE_CAPS));

	caps->NatTraversalRfc3947 = FUNC0(p, IKE_VENDOR_ID_RFC3947_NAT_T);

	caps->NatTraversalDraftIetf = FUNC0(p, IKE_VENDOR_ID_IPSEC_NAT_T_IKE_03) ||
		FUNC0(p, IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02) ||
		FUNC0(p, IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02_2) ||
		FUNC0(p, IKE_VENDOR_ID_IPSEC_NAT_T_IKE_00);

	caps->DpdRfc3706 = FUNC0(p, IKE_VENDOR_ID_RFC3706_DPD);

	caps->MS_L2TPIPSecVPNClient = FUNC0(p, IKE_VENDOR_ID_MICROSOFT_L2TP);
	caps->MS_NT5_ISAKMP_OAKLEY = FUNC0(p, IKE_VENDOR_ID_MS_NT5_ISAKMPOAKLEY);
	caps->MS_Vid_InitialContact = FUNC0(p, IKE_VENDOR_ID_MS_VID_INITIALCONTACT);
}