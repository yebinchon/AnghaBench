
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handle; scalar_t__ ctx; struct TYPE_4__* res_buf; struct TYPE_4__* buffers; int num_buffers; int source; } ;
typedef TYPE_1__ al_t ;


 int alDeleteBuffers (int ,TYPE_1__*) ;
 int alDeleteSources (int,int *) ;
 int alSourceStop (int ) ;
 int alcCloseDevice (scalar_t__) ;
 int alcDestroyContext (scalar_t__) ;
 int alcMakeContextCurrent (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void al_free(void *data)
{
   al_t *al = (al_t*)data;

   if (!al)
      return;

   alSourceStop(al->source);
   alDeleteSources(1, &al->source);

   if (al->buffers)
      alDeleteBuffers(al->num_buffers, al->buffers);

   free(al->buffers);
   free(al->res_buf);
   alcMakeContextCurrent(((void*)0));

   if (al->ctx)
      alcDestroyContext(al->ctx);
   if (al->handle)
      alcCloseDevice(al->handle);
   free(al);
}
