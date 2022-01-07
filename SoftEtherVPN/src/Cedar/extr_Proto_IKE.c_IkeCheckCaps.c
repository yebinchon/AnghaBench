
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int NatTraversalDraftIetf; void* MS_Vid_InitialContact; void* MS_NT5_ISAKMP_OAKLEY; void* MS_L2TPIPSecVPNClient; void* DpdRfc3706; void* NatTraversalRfc3947; } ;
typedef int IKE_PACKET ;
typedef TYPE_1__ IKE_CAPS ;


 int IKE_VENDOR_ID_IPSEC_NAT_T_IKE_00 ;
 int IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02 ;
 int IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02_2 ;
 int IKE_VENDOR_ID_IPSEC_NAT_T_IKE_03 ;
 int IKE_VENDOR_ID_MICROSOFT_L2TP ;
 int IKE_VENDOR_ID_MS_NT5_ISAKMPOAKLEY ;
 int IKE_VENDOR_ID_MS_VID_INITIALCONTACT ;
 int IKE_VENDOR_ID_RFC3706_DPD ;
 int IKE_VENDOR_ID_RFC3947_NAT_T ;
 void* IkeIsVendorIdExists (int *,int ) ;
 int Zero (TYPE_1__*,int) ;

void IkeCheckCaps(IKE_CAPS *caps, IKE_PACKET *p)
{

 if (caps == ((void*)0) || p == ((void*)0))
 {
  Zero(caps, sizeof(IKE_CAPS));
  return;
 }

 Zero(caps, sizeof(IKE_CAPS));

 caps->NatTraversalRfc3947 = IkeIsVendorIdExists(p, IKE_VENDOR_ID_RFC3947_NAT_T);

 caps->NatTraversalDraftIetf = IkeIsVendorIdExists(p, IKE_VENDOR_ID_IPSEC_NAT_T_IKE_03) ||
  IkeIsVendorIdExists(p, IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02) ||
  IkeIsVendorIdExists(p, IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02_2) ||
  IkeIsVendorIdExists(p, IKE_VENDOR_ID_IPSEC_NAT_T_IKE_00);

 caps->DpdRfc3706 = IkeIsVendorIdExists(p, IKE_VENDOR_ID_RFC3706_DPD);

 caps->MS_L2TPIPSecVPNClient = IkeIsVendorIdExists(p, IKE_VENDOR_ID_MICROSOFT_L2TP);
 caps->MS_NT5_ISAKMP_OAKLEY = IkeIsVendorIdExists(p, IKE_VENDOR_ID_MS_NT5_ISAKMPOAKLEY);
 caps->MS_Vid_InitialContact = IkeIsVendorIdExists(p, IKE_VENDOR_ID_MS_VID_INITIALCONTACT);
}
