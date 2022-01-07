
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fd; int * ssl_ctx; scalar_t__ ssl; } ;
struct http_t {TYPE_1__ sock_state; } ;


 int free (struct http_t*) ;
 int socket_close (scalar_t__) ;
 int ssl_socket_free (int *) ;

void net_http_delete(struct http_t *state)
{
   if (!state)
      return;

   if (state->sock_state.fd >= 0)
   {
      socket_close(state->sock_state.fd);







   }
   free(state);
}
