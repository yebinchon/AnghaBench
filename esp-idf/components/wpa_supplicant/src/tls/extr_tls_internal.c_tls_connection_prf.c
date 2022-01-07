
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {scalar_t__ server; scalar_t__ client; } ;


 int tlsv1_client_prf (scalar_t__,char const*,int,int *,size_t) ;
 int tlsv1_server_prf (scalar_t__,char const*,int,int *,size_t) ;

int tls_connection_prf(void *tls_ctx, struct tls_connection *conn,
         const char *label, int server_random_first,
         u8 *out, size_t out_len)
{
 return -1;
}
