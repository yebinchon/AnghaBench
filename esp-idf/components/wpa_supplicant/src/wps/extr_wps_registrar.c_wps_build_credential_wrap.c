
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_credential {int dummy; } ;
struct wpabuf {int dummy; } ;


 int ATTR_CRED ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 scalar_t__ wps_build_credential (struct wpabuf*,struct wps_credential const*) ;

int wps_build_credential_wrap(struct wpabuf *msg,
         const struct wps_credential *cred)
{
 struct wpabuf *wbuf;
 wbuf = wpabuf_alloc(200);
 if (wbuf == ((void*)0))
  return -1;
 if (wps_build_credential(wbuf, cred)) {
  wpabuf_free(wbuf);
  return -1;
 }
 wpabuf_put_be16(msg, ATTR_CRED);
 wpabuf_put_be16(msg, wpabuf_len(wbuf));
 wpabuf_put_buf(msg, wbuf);
 wpabuf_free(wbuf);
 return 0;
}
