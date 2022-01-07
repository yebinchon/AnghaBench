
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ chap_pos; scalar_t__ chap_nb; scalar_t__ chap; } ;
typedef TYPE_1__ mpc_demux ;


 int free (scalar_t__) ;

__attribute__((used)) static void mpc_demux_chap_empty(mpc_demux * d) {
 free(d->chap); d->chap = 0;
 d->chap_nb = 0;
 d->chap_pos = 0;
}
