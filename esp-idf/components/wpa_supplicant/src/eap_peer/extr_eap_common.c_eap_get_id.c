
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_hdr {int identifier; } ;


 struct eap_hdr* wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

u8 eap_get_id(const struct wpabuf *msg)
{
 const struct eap_hdr *eap;

 if (wpabuf_len(msg) < sizeof(*eap))
  return 0;

 eap = wpabuf_head(msg);
 return eap->identifier;
}
