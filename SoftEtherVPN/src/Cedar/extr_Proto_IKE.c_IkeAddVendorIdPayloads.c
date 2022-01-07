
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IKE_PACKET ;


 int IKE_VENDOR_ID_IPSEC_NAT_T_IKE_00 ;
 int IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02 ;
 int IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02_2 ;
 int IKE_VENDOR_ID_IPSEC_NAT_T_IKE_03 ;
 int IKE_VENDOR_ID_RFC3706_DPD ;
 int IKE_VENDOR_ID_RFC3947_NAT_T ;
 int IkeAddVendorId (int *,int ) ;

void IkeAddVendorIdPayloads(IKE_PACKET *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 IkeAddVendorId(p, IKE_VENDOR_ID_RFC3947_NAT_T);
 IkeAddVendorId(p, IKE_VENDOR_ID_IPSEC_NAT_T_IKE_03);
 IkeAddVendorId(p, IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02);
 IkeAddVendorId(p, IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02_2);
 IkeAddVendorId(p, IKE_VENDOR_ID_IPSEC_NAT_T_IKE_00);
 IkeAddVendorId(p, IKE_VENDOR_ID_RFC3706_DPD);
}
