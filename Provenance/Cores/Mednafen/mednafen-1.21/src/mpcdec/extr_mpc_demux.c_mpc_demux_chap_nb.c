
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mpc_int_t ;
struct TYPE_4__ {int chap_nb; } ;
typedef TYPE_1__ mpc_demux ;


 int mpc_demux_chap_find (TYPE_1__*) ;

mpc_int_t mpc_demux_chap_nb(mpc_demux * d)
{
 if (d->chap_nb == -1)
  mpc_demux_chap_find(d);
 return d->chap_nb;
}
