
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chap_nb; int const* chap; } ;
typedef TYPE_1__ mpc_demux ;
typedef int mpc_chap_info ;


 int mpc_demux_chap_find (TYPE_1__*) ;

mpc_chap_info const * mpc_demux_chap(mpc_demux * d, int chap_nb)
{
 if (d->chap_nb == -1)
  mpc_demux_chap_find(d);
 if (chap_nb >= d->chap_nb || chap_nb < 0)
  return 0;
 return &d->chap[chap_nb];
}
