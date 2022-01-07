
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ssl_state {int ctx; int net_ctx; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ MBEDTLS_ERR_SSL_WANT_READ ;
 scalar_t__ isagain (int) ;
 int mbedtls_net_set_nonblock (int *) ;
 scalar_t__ mbedtls_ssl_read (int *,unsigned char*,size_t) ;

ssize_t ssl_socket_receive_all_nonblocking(void *state_data, bool *error, void *data_, size_t size)
{
   struct ssl_state *state = (struct ssl_state*)state_data;
   const uint8_t *data = (const uint8_t*)data_;

   ssize_t ret;

   mbedtls_net_set_nonblock(&state->net_ctx);

   ret = mbedtls_ssl_read(&state->ctx, (unsigned char*)data, size);

   if (ret > 0)
      return ret;

   if (ret == 0)
   {

      *error = 1;
      return -1;
   }

   if (isagain((int)ret) || ret == MBEDTLS_ERR_SSL_WANT_READ)
      return 0;

   *error = 1;
   return -1;
}
