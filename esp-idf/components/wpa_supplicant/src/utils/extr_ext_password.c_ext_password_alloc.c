
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int MSG_ERROR ;
 int errno ;
 scalar_t__ mlock (int ,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

struct wpabuf * ext_password_alloc(size_t len)
{
 struct wpabuf *buf;

 buf = wpabuf_alloc(len);
 if (buf == ((void*)0))
  return ((void*)0);


 if (mlock(wpabuf_head(buf), wpabuf_len(buf)) < 0) {
  wpa_printf(MSG_ERROR, "EXT PW: mlock failed: %s",
      strerror(errno));
 }


 return buf;
}
