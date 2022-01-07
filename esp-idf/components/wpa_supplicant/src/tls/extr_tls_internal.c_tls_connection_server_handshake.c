
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct tls_connection {int * server; } ;


 int os_free (int *) ;
 scalar_t__ tlsv1_server_established (int *) ;
 int * tlsv1_server_handshake (int *,int ,int ,size_t*) ;
 struct wpabuf* wpabuf_alloc (int ) ;
 struct wpabuf* wpabuf_alloc_ext_data (int *,size_t) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

struct wpabuf * tls_connection_server_handshake(void *tls_ctx,
      struct tls_connection *conn,
      const struct wpabuf *in_data,
      struct wpabuf **appl_data)
{
 return ((void*)0);

}
