
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPS_DEV_OUI_WFA ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

struct wpabuf * wps_ie_encapsulate(struct wpabuf *data)
{
 struct wpabuf *ie;
 const u8 *pos, *end;

 ie = wpabuf_alloc(wpabuf_len(data) + 100);
 if (ie == ((void*)0)) {
  wpabuf_free(data);
  return ((void*)0);
 }

 pos = wpabuf_head(data);
 end = pos + wpabuf_len(data);

 while (end > pos) {
  size_t frag_len = end - pos;
  if (frag_len > 251)
   frag_len = 251;
  wpabuf_put_u8(ie, WLAN_EID_VENDOR_SPECIFIC);
  wpabuf_put_u8(ie, 4 + frag_len);
  wpabuf_put_be32(ie, WPS_DEV_OUI_WFA);
  wpabuf_put_data(ie, pos, frag_len);
  pos += frag_len;
 }

 wpabuf_free(data);

 return ie;
}
