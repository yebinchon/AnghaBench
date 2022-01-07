
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;

struct wpabuf * wpabuf_concat(struct wpabuf *a, struct wpabuf *b)
{
 struct wpabuf *n = ((void*)0);
 size_t len = 0;

 if (b == ((void*)0))
  return a;

 if (a)
  len += wpabuf_len(a);
 if (b)
  len += wpabuf_len(b);

 n = wpabuf_alloc(len);
 if (n) {
  if (a)
   wpabuf_put_buf(n, a);
  if (b)
   wpabuf_put_buf(n, b);
 }

 wpabuf_free(a);
 wpabuf_free(b);

 return n;
}
