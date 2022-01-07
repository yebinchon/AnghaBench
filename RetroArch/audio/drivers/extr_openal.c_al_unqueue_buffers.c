
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t res_ptr; int * res_buf; int source; } ;
typedef TYPE_1__ al_t ;
typedef scalar_t__ ALint ;


 int AL_BUFFERS_PROCESSED ;
 int alGetSourcei (int ,int ,scalar_t__*) ;
 int alSourceUnqueueBuffers (int ,scalar_t__,int *) ;

__attribute__((used)) static bool al_unqueue_buffers(al_t *al)
{
   ALint val;

   alGetSourcei(al->source, AL_BUFFERS_PROCESSED, &val);

   if (val <= 0)
      return 0;

   alSourceUnqueueBuffers(al->source, val, &al->res_buf[al->res_ptr]);
   al->res_ptr += val;
   return 1;
}
