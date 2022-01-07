
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_status ;
typedef int mpc_demux ;


 scalar_t__ MPC_IS_FAILURE (int ) ;
 int mpc_demux_chap_empty (int *) ;
 int mpc_demux_chap_find_inner (int *) ;

__attribute__((used)) static mpc_status mpc_demux_chap_find(mpc_demux * d) {
 mpc_status s = mpc_demux_chap_find_inner(d);
 if (MPC_IS_FAILURE(s))
  mpc_demux_chap_empty(d);
 return s;
}
