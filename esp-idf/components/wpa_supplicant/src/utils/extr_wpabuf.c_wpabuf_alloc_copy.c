
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_put_data (struct wpabuf*,void const*,size_t) ;

struct wpabuf * wpabuf_alloc_copy(const void *data, size_t len)
{
 struct wpabuf *buf = wpabuf_alloc(len);
 if (buf)
  wpabuf_put_data(buf, data, len);
 return buf;
}
