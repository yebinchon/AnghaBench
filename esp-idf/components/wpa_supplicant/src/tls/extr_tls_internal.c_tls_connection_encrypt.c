
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct tls_connection {scalar_t__ server; scalar_t__ client; } ;


 int tlsv1_client_encrypt (scalar_t__,int ,scalar_t__,int ,int ) ;
 int tlsv1_server_encrypt (scalar_t__,int ,scalar_t__,int ,int ) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf const*) ;
 scalar_t__ wpabuf_len (struct wpabuf const*) ;
 int wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_size (struct wpabuf*) ;

struct wpabuf * tls_connection_encrypt(void *tls_ctx,
           struct tls_connection *conn,
           const struct wpabuf *in_data)
{
 return ((void*)0);
}
