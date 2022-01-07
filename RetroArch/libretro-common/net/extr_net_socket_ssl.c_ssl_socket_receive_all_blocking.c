
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ssl_state {int ctx; int net_ctx; } ;


 int MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY ;
 int MBEDTLS_ERR_SSL_WANT_READ ;
 int MBEDTLS_ERR_SSL_WANT_WRITE ;
 int mbedtls_net_set_block (int *) ;
 int mbedtls_ssl_read (int *,unsigned char*,size_t) ;

int ssl_socket_receive_all_blocking(void *state_data, void *data_, size_t size)
{
   struct ssl_state *state = (struct ssl_state*)state_data;
   const uint8_t *data = (const uint8_t*)data_;

   mbedtls_net_set_block(&state->net_ctx);

   while (1)
   {

      int ret = mbedtls_ssl_read(&state->ctx, (unsigned char*)data, size);

      if (ret == MBEDTLS_ERR_SSL_WANT_READ || ret == MBEDTLS_ERR_SSL_WANT_WRITE)
         continue;

      if (ret == MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY)
         break;

      if (ret == 0)
         break;

      if (ret < 0)
         return -1;
   }

   return 1;
}
