
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* tcp_seq ;
struct tcpcb {scalar_t__ snd_numholes; } ;
struct sackhole {void* rxmit; void* end; void* start; } ;
struct TYPE_2__ {int tcps_sack_sboverflow; } ;


 int OSIncrementAtomic (scalar_t__*) ;
 int sack_hole_zone ;
 scalar_t__ tcp_sack_globalholes ;
 scalar_t__ tcp_sack_globalmaxholes ;
 scalar_t__ tcp_sack_maxholes ;
 TYPE_1__ tcpstat ;
 scalar_t__ zalloc (int ) ;

__attribute__((used)) static struct sackhole *
tcp_sackhole_alloc(struct tcpcb *tp, tcp_seq start, tcp_seq end)
{
 struct sackhole *hole;

 if (tp->snd_numholes >= tcp_sack_maxholes ||
     tcp_sack_globalholes >= tcp_sack_globalmaxholes) {
  tcpstat.tcps_sack_sboverflow++;
  return ((void*)0);
 }

 hole = (struct sackhole *)zalloc(sack_hole_zone);
 if (hole == ((void*)0))
  return ((void*)0);

 hole->start = start;
 hole->end = end;
 hole->rxmit = start;

 tp->snd_numholes++;
 OSIncrementAtomic(&tcp_sack_globalholes);

 return hole;
}
