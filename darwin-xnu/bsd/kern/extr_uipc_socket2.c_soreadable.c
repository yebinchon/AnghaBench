
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tqh_first; } ;
struct TYPE_4__ {scalar_t__ sb_cc; scalar_t__ sb_lowat; } ;
struct socket {int so_state; scalar_t__ so_error; TYPE_1__ so_comp; TYPE_2__ so_rcv; } ;


 int SS_CANTRCVMORE ;
 scalar_t__ cfil_sock_data_pending (TYPE_2__*) ;

int
soreadable(struct socket *so)
{
 return (so->so_rcv.sb_cc >= so->so_rcv.sb_lowat ||
     ((so->so_state & SS_CANTRCVMORE)



     ) ||
     so->so_comp.tqh_first || so->so_error);
}
