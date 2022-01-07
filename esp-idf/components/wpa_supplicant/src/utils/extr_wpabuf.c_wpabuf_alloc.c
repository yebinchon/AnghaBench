
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf_trace {int magic; } ;
struct wpabuf {size_t size; } ;


 int WPABUF_MAGIC ;
 struct wpabuf_trace* os_zalloc (int) ;

struct wpabuf * wpabuf_alloc(size_t len)
{
 struct wpabuf *buf = (struct wpabuf *)os_zalloc(sizeof(struct wpabuf) + len);
 if (buf == ((void*)0))
  return ((void*)0);


 buf->size = len;
 return buf;
}
