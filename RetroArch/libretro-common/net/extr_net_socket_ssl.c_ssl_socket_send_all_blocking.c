
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ssl_state {int ctx; int net_ctx; } ;


 int MBEDTLS_ERR_SSL_WANT_READ ;
 int MBEDTLS_ERR_SSL_WANT_WRITE ;
 int mbedtls_net_set_block (int *) ;
 int mbedtls_ssl_write (int *,int const*,size_t) ;

int ssl_socket_send_all_blocking(void *state_data, const void *data_, size_t size, bool no_signal)
{
   struct ssl_state *state = (struct ssl_state*)state_data;
   const uint8_t *data = (const uint8_t*)data_;
   int ret;

   mbedtls_net_set_block(&state->net_ctx);

   while ((ret = mbedtls_ssl_write(&state->ctx, data, size)) <= 0)
   {
      if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE)
         return 0;
   }

   return 1;
}
