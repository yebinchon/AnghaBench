
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_client {scalar_t__ state; int master_secret; int server_random; int client_random; } ;
struct tls_keys {int master_key_len; int master_key; void* server_random_len; int server_random; void* client_random_len; int client_random; } ;


 scalar_t__ CLIENT_HELLO ;
 scalar_t__ SERVER_HELLO ;
 int TLS_MASTER_SECRET_LEN ;
 void* TLS_RANDOM_LEN ;
 int os_memset (struct tls_keys*,int ,int) ;

int tlsv1_client_get_keys(struct tlsv1_client *conn, struct tls_keys *keys)
{
 os_memset(keys, 0, sizeof(*keys));
 if (conn->state == CLIENT_HELLO)
  return -1;

 keys->client_random = conn->client_random;
 keys->client_random_len = TLS_RANDOM_LEN;

 if (conn->state != SERVER_HELLO) {
  keys->server_random = conn->server_random;
  keys->server_random_len = TLS_RANDOM_LEN;
  keys->master_key = conn->master_secret;
  keys->master_key_len = TLS_MASTER_SECRET_LEN;
 }

 return 0;
}
