
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpc_streaminfo ;
struct TYPE_3__ {int si; } ;
typedef TYPE_1__ mpc_demux ;


 int memcpy (int *,int *,int) ;

void mpc_demux_get_info(mpc_demux * d, mpc_streaminfo * i)
{
 memcpy(i, &d->si, sizeof d->si);
}
