
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int mpc_reader ;
struct TYPE_9__ {int chap_nb; struct TYPE_9__* seek_table; int si; int d; int * r; } ;
typedef TYPE_1__ mpc_demux ;


 scalar_t__ MPC_STATUS_OK ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int mpc_decoder_init (int *) ;
 int mpc_demux_clear_buff (TYPE_1__*) ;
 scalar_t__ mpc_demux_header (TYPE_1__*) ;
 scalar_t__ mpc_demux_seek_init (TYPE_1__*) ;

mpc_demux * mpc_demux_init(mpc_reader * p_reader)
{
 mpc_demux* p_tmp = malloc(sizeof(mpc_demux));

 if (p_tmp != 0) {
  memset(p_tmp, 0, sizeof(mpc_demux));
  p_tmp->r = p_reader;
  p_tmp->chap_nb = -1;
  mpc_demux_clear_buff(p_tmp);
  if (mpc_demux_header(p_tmp) == MPC_STATUS_OK &&
      mpc_demux_seek_init(p_tmp) == MPC_STATUS_OK) {
   p_tmp->d = mpc_decoder_init(&p_tmp->si);
  } else {
   if (p_tmp->seek_table)
    free(p_tmp->seek_table);
   free(p_tmp);
   p_tmp = 0;
  }
 }

 return p_tmp;
}
