
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; int dev; } ;
typedef TYPE_1__ coreaudio_t ;


 scalar_t__ AudioOutputUnitStart (int ) ;
 scalar_t__ noErr ;

__attribute__((used)) static bool coreaudio_start(void *data, bool is_shutdown)
{
   coreaudio_t *dev = (coreaudio_t*)data;
   if (!dev)
      return 0;
   dev->is_paused = (AudioOutputUnitStart(dev->dev) == noErr) ? 0 : 1;
   return dev->is_paused ? 0 : 1;
}
