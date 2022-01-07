
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int snd_numholes; } ;
struct sackhole {int dummy; } ;


 int OSDecrementAtomic (int *) ;
 int sack_hole_zone ;
 int tcp_sack_globalholes ;
 int zfree (int ,struct sackhole*) ;

__attribute__((used)) static void
tcp_sackhole_free(struct tcpcb *tp, struct sackhole *hole)
{
 zfree(sack_hole_zone, hole);

 tp->snd_numholes--;
 OSDecrementAtomic(&tcp_sack_globalholes);
}
