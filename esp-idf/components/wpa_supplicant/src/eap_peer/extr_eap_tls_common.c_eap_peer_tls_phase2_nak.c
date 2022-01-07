
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_method_type {scalar_t__ vendor; int method; } ;
struct eap_hdr {int identifier; } ;


 int EAP_CODE_RESPONSE ;
 int EAP_TYPE_NAK ;
 scalar_t__ EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 struct wpabuf* eap_msg_alloc (scalar_t__,int ,size_t,int ,int ) ;
 int eap_update_len (struct wpabuf*) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

int eap_peer_tls_phase2_nak(struct eap_method_type *types, size_t num_types,
       struct eap_hdr *hdr, struct wpabuf **resp)
{
 u8 *pos = (u8 *) (hdr + 1);
 size_t i;


 wpa_printf(MSG_DEBUG, "TLS: Phase Request: Nak type=%d\n", *pos);
 wpa_hexdump(MSG_DEBUG, "TLS: Allowed Phase2 EAP types",
      (u8 *) types, num_types * sizeof(struct eap_method_type));
 *resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_NAK, num_types,
         EAP_CODE_RESPONSE, hdr->identifier);
 if (*resp == ((void*)0))
  return -1;

 for (i = 0; i < num_types; i++) {
  if (types[i].vendor == EAP_VENDOR_IETF &&
      types[i].method < 256)
   wpabuf_put_u8(*resp, types[i].method);
 }

 eap_update_len(*resp);

 return 0;
}
