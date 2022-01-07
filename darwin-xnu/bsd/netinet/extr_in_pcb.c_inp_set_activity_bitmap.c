
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_nw_activity; } ;


 int in_stat_set_activity_bitmap (int *,int ) ;
 int net_uptime () ;

inline void
inp_set_activity_bitmap(struct inpcb *inp)
{
 in_stat_set_activity_bitmap(&inp->inp_nw_activity, net_uptime());
}
