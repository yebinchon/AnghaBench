
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct ssl_state {TYPE_1__ net_ctx; int ctx; } ;


 int mbedtls_ssl_close_notify (int *) ;
 int socket_close (int ) ;

void ssl_socket_close(void *state_data)
{
   struct ssl_state *state = (struct ssl_state*)state_data;

   mbedtls_ssl_close_notify(&state->ctx);

   socket_close(state->net_ctx.fd);
}
