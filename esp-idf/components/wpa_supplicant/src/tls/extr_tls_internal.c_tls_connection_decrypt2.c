
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct tls_connection {scalar_t__ server; scalar_t__ client; } ;


 struct wpabuf* tlsv1_client_decrypt (scalar_t__,int ,int,int*) ;
 int tlsv1_server_decrypt (scalar_t__,int ,int,int ,int ) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_size (struct wpabuf*) ;

struct wpabuf * tls_connection_decrypt2(void *tls_ctx,
     struct tls_connection *conn,
     const struct wpabuf *in_data,
     int *need_more_data)
{
 if (need_more_data)
  *need_more_data = 0;
 return ((void*)0);
}
