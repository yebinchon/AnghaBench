
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf_trace {int magic; } ;
struct wpabuf {size_t size; size_t used; int * ext_data; } ;


 int WPABUF_MAGIC ;
 struct wpabuf_trace* os_zalloc (int) ;

struct wpabuf * wpabuf_alloc_ext_data(u8 *data, size_t len)
{
 struct wpabuf *buf = (struct wpabuf *)os_zalloc(sizeof(struct wpabuf));
 if (buf == ((void*)0))
  return ((void*)0);


 buf->size = len;
 buf->used = len;
 buf->ext_data = data;

 return buf;
}
