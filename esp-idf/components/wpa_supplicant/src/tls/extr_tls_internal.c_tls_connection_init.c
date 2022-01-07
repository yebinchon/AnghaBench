
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_global {int server_cred; scalar_t__ server; } ;
struct tls_connection {int * server; int * client; } ;


 int os_free (struct tls_connection*) ;
 scalar_t__ os_zalloc (int) ;
 int * tlsv1_client_init () ;
 int * tlsv1_server_init (int ) ;

struct tls_connection * tls_connection_init(void *tls_ctx)
{
 struct tls_connection *conn;
 struct tls_global *global = tls_ctx;

 conn = (struct tls_connection *)os_zalloc(sizeof(*conn));
 if (conn == ((void*)0))
  return ((void*)0);
 return conn;
}
