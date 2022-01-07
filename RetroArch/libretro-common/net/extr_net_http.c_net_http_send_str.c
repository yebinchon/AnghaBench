
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_socket_state_t {int fd; int ssl_ctx; scalar_t__ ssl; } ;


 int socket_send_all_blocking (int ,char const*,size_t,int) ;
 int ssl_socket_send_all_blocking (int ,char const*,size_t,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void net_http_send_str(
      struct http_socket_state_t *sock_state, bool *error, const char *text)
{
   size_t text_size;
   if (*error)
      return;
   text_size = strlen(text);
   {
      if (!socket_send_all_blocking(
               sock_state->fd, text, text_size, 1))
         *error = 1;
   }
}
