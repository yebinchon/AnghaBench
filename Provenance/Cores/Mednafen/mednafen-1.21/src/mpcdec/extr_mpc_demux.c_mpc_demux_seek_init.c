
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mpc_status ;
typedef scalar_t__ mpc_seek_t ;
struct TYPE_5__ {int block_pwr; int samples; } ;
struct TYPE_6__ {int seek_pwr; int seek_table_size; scalar_t__* seek_table; TYPE_1__ si; } ;
typedef TYPE_2__ mpc_demux ;


 size_t MAX_SEEK_TABLE_SIZE ;
 int MPC_FRAME_LENGTH ;
 int MPC_STATUS_FAIL ;
 int MPC_STATUS_OK ;
 scalar_t__* malloc (size_t) ;
 int mpc_demux_pos (TYPE_2__*) ;

__attribute__((used)) static mpc_status mpc_demux_seek_init(mpc_demux * d)
{
 size_t seek_table_size;
 if (d->seek_table != 0)
  return MPC_STATUS_OK;

 d->seek_pwr = 6;
 if (d->si.block_pwr > d->seek_pwr)
  d->seek_pwr = d->si.block_pwr;
 seek_table_size = (2 + d->si.samples / (MPC_FRAME_LENGTH << d->seek_pwr));
 while (seek_table_size > MAX_SEEK_TABLE_SIZE) {
  d->seek_pwr++;
  seek_table_size = (2 + d->si.samples / (MPC_FRAME_LENGTH << d->seek_pwr));
 }
 d->seek_table = malloc((size_t)(seek_table_size * sizeof(mpc_seek_t)));
 if (d->seek_table == 0)
  return MPC_STATUS_FAIL;
 d->seek_table[0] = (mpc_seek_t)mpc_demux_pos(d);
 d->seek_table_size = 1;

 return MPC_STATUS_OK;
}
