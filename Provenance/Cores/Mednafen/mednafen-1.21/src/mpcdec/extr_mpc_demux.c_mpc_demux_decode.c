
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mpc_status ;
struct TYPE_4__ {int bits; scalar_t__ samples; } ;
typedef TYPE_1__ mpc_frame_info ;
typedef int mpc_demux ;


 scalar_t__ MPC_IS_FAILURE (int ) ;
 int mpc_demux_decode_inner (int *,TYPE_1__*) ;

mpc_status mpc_demux_decode(mpc_demux * d, mpc_frame_info * i) {
 for(;;) {

  mpc_status s = mpc_demux_decode_inner(d, i);
  if (MPC_IS_FAILURE(s))
   i->bits = -1;

  if (i->bits == -1 || i->samples > 0)
   return s;
 }
}
