
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {int tcps_snd_swcsum_bytes; int tcps_snd_swcsum; } ;


 TYPE_1__ tcpstat ;

void
tcp_out_cksum_stats(u_int32_t len)
{
 tcpstat.tcps_snd_swcsum++;
 tcpstat.tcps_snd_swcsum_bytes += len;
}
