
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ssl_state {int ctx; int net_ctx; } ;
typedef int ssize_t ;


 int mbedtls_net_set_nonblock (int *) ;
 int mbedtls_ssl_write (int *,int const*,size_t) ;

ssize_t ssl_socket_send_all_nonblocking(void *state_data, const void *data_, size_t size, bool no_signal)
{
   struct ssl_state *state = (struct ssl_state*)state_data;
   const uint8_t *data = (const uint8_t*)data_;
   ssize_t sent = size;
   int ret;

   mbedtls_net_set_nonblock(&state->net_ctx);

   ret = mbedtls_ssl_write(&state->ctx, data, size);

   if (ret <= 0)
      return -1;

   return sent;
}
