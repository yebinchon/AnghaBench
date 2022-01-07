
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* DeInit ) () ;} ;
struct TYPE_3__ {int * data32; } ;


 TYPE_2__* SNDCore ;
 int * SoundRam ;
 int T2MemoryDeInit (int *) ;
 int free (int *) ;
 int scsp_shutdown () ;
 TYPE_1__* scspchannel ;
 int stub1 () ;

void
ScspDeInit (void)
{
  if (scspchannel[0].data32)
    free(scspchannel[0].data32);
  scspchannel[0].data32 = ((void*)0);

  if (scspchannel[1].data32)
    free(scspchannel[1].data32);
  scspchannel[1].data32 = ((void*)0);

  if (SNDCore)
    SNDCore->DeInit();
  SNDCore = ((void*)0);

  scsp_shutdown();

  if (SoundRam)
    T2MemoryDeInit (SoundRam);
  SoundRam = ((void*)0);
}
