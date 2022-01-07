
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf_trace {scalar_t__ magic; } ;
struct wpabuf {scalar_t__ used; scalar_t__ size; } ;


 int MSG_ERROR ;
 scalar_t__ WPABUF_MAGIC ;
 int wpa_printf (int ,char*,struct wpabuf const*,...) ;
 struct wpabuf_trace* wpabuf_get_trace (struct wpabuf const*) ;

__attribute__((used)) static void wpabuf_overflow(const struct wpabuf *buf, size_t len)
{







 wpa_printf( MSG_ERROR, "wpabuf %p (size=%lu used=%lu) overflow len=%lu",
     buf, (unsigned long) buf->size, (unsigned long) buf->used,
     (unsigned long) len);
}
