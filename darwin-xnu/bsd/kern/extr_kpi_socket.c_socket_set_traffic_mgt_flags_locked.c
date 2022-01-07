
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef TYPE_1__* socket_t ;
struct TYPE_4__ {int so_flags1; } ;


 int OSBitOrAtomic (int ,int *) ;
 int SOF1_TRAFFIC_MGT_SO_BACKGROUND ;
 int SOF1_TRAFFIC_MGT_TCP_RECVBG ;
 int TRAFFIC_MGT_SO_BACKGROUND ;
 int TRAFFIC_MGT_TCP_RECVBG ;
 int sock_set_tcp_stream_priority (TYPE_1__*) ;

void
socket_set_traffic_mgt_flags_locked(socket_t sock, u_int8_t flags)
{
 u_int32_t soflags1 = 0;

 if ((flags & TRAFFIC_MGT_SO_BACKGROUND))
  soflags1 |= SOF1_TRAFFIC_MGT_SO_BACKGROUND;
 if ((flags & TRAFFIC_MGT_TCP_RECVBG))
  soflags1 |= SOF1_TRAFFIC_MGT_TCP_RECVBG;

 (void) OSBitOrAtomic(soflags1, &sock->so_flags1);

 sock_set_tcp_stream_priority(sock);
}
