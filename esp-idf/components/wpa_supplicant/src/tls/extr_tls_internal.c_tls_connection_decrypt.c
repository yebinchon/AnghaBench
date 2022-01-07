
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct tls_connection {int dummy; } ;


 struct wpabuf* tls_connection_decrypt2 (void*,struct tls_connection*,struct wpabuf const*,int *) ;

struct wpabuf * tls_connection_decrypt(void *tls_ctx,
           struct tls_connection *conn,
           const struct wpabuf *in_data)
{
 return tls_connection_decrypt2(tls_ctx, conn, in_data, ((void*)0));
}
