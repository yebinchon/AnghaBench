
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {scalar_t__ used; scalar_t__ size; } ;


 int wpabuf_len (struct wpabuf*) ;
 void* wpabuf_mhead_u8 (struct wpabuf*) ;
 int wpabuf_overflow (struct wpabuf*,size_t) ;

void * wpabuf_put(struct wpabuf *buf, size_t len)
{
 void *tmp = wpabuf_mhead_u8(buf) + wpabuf_len(buf);
 buf->used += len;
 if (buf->used > buf->size) {
  wpabuf_overflow(buf, len);
 }
 return tmp;
}
