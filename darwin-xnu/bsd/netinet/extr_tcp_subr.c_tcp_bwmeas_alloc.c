
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_maxseg; } ;
struct bwmeas {int bw_minsizepkts; int bw_minsize; } ;


 int TCP_BWMEAS_BURST_MINSIZE ;
 int bwmeas_elm_size ;
 int bzero (struct bwmeas*,int ) ;
 int tcp_bwmeas_zone ;
 struct bwmeas* zalloc (int ) ;

struct bwmeas *
tcp_bwmeas_alloc(struct tcpcb *tp)
{
 struct bwmeas *elm;
 elm = zalloc(tcp_bwmeas_zone);
 if (elm == ((void*)0))
  return (elm);

 bzero(elm, bwmeas_elm_size);
 elm->bw_minsizepkts = TCP_BWMEAS_BURST_MINSIZE;
 elm->bw_minsize = elm->bw_minsizepkts * tp->t_maxseg;
 return (elm);
}
