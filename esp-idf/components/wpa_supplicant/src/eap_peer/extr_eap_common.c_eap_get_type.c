
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_hdr {int dummy; } ;
typedef int const EapType ;


 int const EAP_TYPE_NONE ;
 scalar_t__ wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

EapType eap_get_type(const struct wpabuf *msg)
{
 if (wpabuf_len(msg) < sizeof(struct eap_hdr) + 1)
  return EAP_TYPE_NONE;

 return ((const u8 *) wpabuf_head(msg))[sizeof(struct eap_hdr)];
}
