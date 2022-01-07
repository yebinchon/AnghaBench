
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int * sackblks; scalar_t__ rcv_numsacks; } ;
struct sackblk {int dummy; } ;


 int MAX_SACK_BLKS ;
 int bzero (int *,int) ;

void
tcp_clean_sackreport( struct tcpcb *tp)
{

 tp->rcv_numsacks = 0;
 bzero(&tp->sackblks[0], sizeof (struct sackblk) * MAX_SACK_BLKS);
}
