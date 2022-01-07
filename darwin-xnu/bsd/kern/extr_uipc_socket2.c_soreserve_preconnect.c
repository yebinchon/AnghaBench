
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int sb_preconn_hiwat; } ;
struct TYPE_3__ {unsigned int sb_preconn_hiwat; } ;
struct socket {TYPE_2__ so_rcv; TYPE_1__ so_snd; } ;



void
soreserve_preconnect(struct socket *so, unsigned int pre_cc)
{

 so->so_snd.sb_preconn_hiwat = pre_cc;
 so->so_rcv.sb_preconn_hiwat = pre_cc;
}
