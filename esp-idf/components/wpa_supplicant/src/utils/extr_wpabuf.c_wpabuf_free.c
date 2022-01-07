
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf_trace {scalar_t__ magic; struct wpabuf_trace* ext_data; } ;
struct wpabuf {scalar_t__ magic; struct wpabuf* ext_data; } ;


 int MSG_ERROR ;
 scalar_t__ WPABUF_MAGIC ;
 int abort () ;
 int os_free (struct wpabuf_trace*) ;
 int wpa_printf (int ,char*,scalar_t__) ;
 struct wpabuf_trace* wpabuf_get_trace (struct wpabuf_trace*) ;

void wpabuf_free(struct wpabuf *buf)
{
 if (buf == ((void*)0))
  return;
 os_free(buf->ext_data);
 os_free(buf);

}
