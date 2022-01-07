
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* ChangeVideoFormat ) (int) ;} ;


 TYPE_1__* SNDCore ;
 scalar_t__ scsp_alloc_bufs () ;
 int scsplines ;
 int scspsoundbufs ;
 int scspsoundbufsize ;
 int scspsoundlen ;
 int stub1 (int) ;

int
ScspChangeVideoFormat (int type)
{
  scspsoundlen = 44100 / (type ? 50 : 60);
  scsplines = type ? 313 : 263;
  scspsoundbufsize = scspsoundlen * scspsoundbufs;

  if (scsp_alloc_bufs () < 0)
    return -1;

  SNDCore->ChangeVideoFormat (type ? 50 : 60);

  return 0;
}
