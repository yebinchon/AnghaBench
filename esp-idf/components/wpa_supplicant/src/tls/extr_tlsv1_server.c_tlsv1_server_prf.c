
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tls_version; } ;
struct tlsv1_server {scalar_t__ state; int master_secret; TYPE_1__ rl; int server_random; int client_random; } ;


 scalar_t__ ESTABLISHED ;
 int TLS_MASTER_SECRET_LEN ;
 int TLS_RANDOM_LEN ;
 int os_memcpy (int *,int ,int) ;
 int tls_prf (int ,int ,int ,char const*,int *,int,int *,size_t) ;

int tlsv1_server_prf(struct tlsv1_server *conn, const char *label,
       int server_random_first, u8 *out, size_t out_len)
{
 u8 seed[2 * TLS_RANDOM_LEN];

 if (conn->state != ESTABLISHED)
  return -1;

 if (server_random_first) {
  os_memcpy(seed, conn->server_random, TLS_RANDOM_LEN);
  os_memcpy(seed + TLS_RANDOM_LEN, conn->client_random,
     TLS_RANDOM_LEN);
 } else {
  os_memcpy(seed, conn->client_random, TLS_RANDOM_LEN);
  os_memcpy(seed + TLS_RANDOM_LEN, conn->server_random,
     TLS_RANDOM_LEN);
 }

 return tls_prf(conn->rl.tls_version,
         conn->master_secret, TLS_MASTER_SECRET_LEN,
         label, seed, 2 * TLS_RANDOM_LEN, out, out_len);
}
