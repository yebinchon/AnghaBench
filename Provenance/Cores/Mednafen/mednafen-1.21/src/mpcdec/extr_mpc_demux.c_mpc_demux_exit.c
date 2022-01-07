
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* chap; struct TYPE_4__* seek_table; int d; } ;
typedef TYPE_1__ mpc_demux ;


 int free (TYPE_1__*) ;
 int mpc_decoder_exit (int ) ;

void mpc_demux_exit(mpc_demux * d)
{
 mpc_decoder_exit(d->d);
 free(d->seek_table);
 free(d->chap);
 free(d);
}
