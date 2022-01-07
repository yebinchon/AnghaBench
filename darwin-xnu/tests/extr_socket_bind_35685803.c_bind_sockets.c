
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int socket_count; int * socket_list; scalar_t__ v6; } ;
typedef TYPE_1__* SocketInfoRef ;


 int T_LOG (char*,char const*,int ,int ,int) ;
 scalar_t__ debug ;
 int ntohs (int ) ;
 int sock_bind (int ,int ) ;
 int sock_get_port (int ) ;
 int sockv6_bind (int ,int ) ;

__attribute__((used)) static void
bind_sockets(SocketInfoRef info, const char * msg)
{
 for (int i = 0; i < info->socket_count; i++) {
  int error;
  uint16_t port;

  if (info->v6) {
   error = sockv6_bind(info->socket_list[i], 0);
  }
  else {
   error = sock_bind(info->socket_list[i], 0);
  }
  port = sock_get_port(info->socket_list[i]);
  if (debug) {
   T_LOG( "%s: fd %d port is %d error %d",
          msg, info->socket_list[i], ntohs(port), error);
  }
 }
 return;
}
