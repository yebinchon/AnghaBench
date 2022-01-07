
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {scalar_t__ client; } ;


 int tlsv1_client_hello_ext (scalar_t__,int,int const*,size_t) ;

int tls_connection_client_hello_ext(void *tls_ctx, struct tls_connection *conn,
        int ext_type, const u8 *data,
        size_t data_len)
{






 return -1;
}
