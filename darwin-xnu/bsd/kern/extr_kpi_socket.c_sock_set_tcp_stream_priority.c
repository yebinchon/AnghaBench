
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socket_t ;


 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ SOCK_DOM (int ) ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SOCK_TYPE (int ) ;
 int set_tcp_stream_priority (int ) ;

__attribute__((used)) static inline void
sock_set_tcp_stream_priority(socket_t sock)
{
 if ((SOCK_DOM(sock) == PF_INET || SOCK_DOM(sock) == PF_INET6) &&
     SOCK_TYPE(sock) == SOCK_STREAM) {
  set_tcp_stream_priority(sock);
 }
}
