
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {int tcps_rcv_swcsum_bytes; int tcps_rcv_swcsum; } ;


 TYPE_1__ tcpstat ;

void
tcp_in_cksum_stats(u_int32_t len)
{
 tcpstat.tcps_rcv_swcsum++;
 tcpstat.tcps_rcv_swcsum_bytes += len;
}
