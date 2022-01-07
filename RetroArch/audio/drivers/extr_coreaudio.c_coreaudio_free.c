
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cond; int lock; scalar_t__ buffer; int dev; scalar_t__ dev_alive; } ;
typedef TYPE_1__ coreaudio_t ;


 int AudioComponentInstanceDispose (int ) ;
 int AudioOutputUnitStop (int ) ;
 int CloseComponent (int ) ;
 int fifo_free (scalar_t__) ;
 int free (TYPE_1__*) ;
 int scond_free (int ) ;
 int slock_free (int ) ;

__attribute__((used)) static void coreaudio_free(void *data)
{
   coreaudio_t *dev = (coreaudio_t*)data;

   if (!dev)
      return;

   if (dev->dev_alive)
   {
      AudioOutputUnitStop(dev->dev);



      AudioComponentInstanceDispose(dev->dev);

   }

   if (dev->buffer)
      fifo_free(dev->buffer);

   slock_free(dev->lock);
   scond_free(dev->cond);

   free(dev);
}
