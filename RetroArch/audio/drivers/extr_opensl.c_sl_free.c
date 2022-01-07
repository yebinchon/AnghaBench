
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* buffer_chunk; struct TYPE_3__* buffer; scalar_t__ cond; scalar_t__ lock; scalar_t__ engine_object; scalar_t__ output_mix; scalar_t__ buffer_queue_object; scalar_t__ player; } ;
typedef TYPE_1__ sl_t ;


 int SLObjectItf_Destroy (scalar_t__) ;
 int SLPlayItf_SetPlayState (scalar_t__,int ) ;
 int SL_PLAYSTATE_STOPPED ;
 int free (TYPE_1__*) ;
 int scond_free (scalar_t__) ;
 int slock_free (scalar_t__) ;

__attribute__((used)) static void sl_free(void *data)
{
   sl_t *sl = (sl_t*)data;
   if (!sl)
      return;

   if (sl->player)
      SLPlayItf_SetPlayState(sl->player, SL_PLAYSTATE_STOPPED);

   if (sl->buffer_queue_object)
      SLObjectItf_Destroy(sl->buffer_queue_object);

   if (sl->output_mix)
      SLObjectItf_Destroy(sl->output_mix);

   if (sl->engine_object)
      SLObjectItf_Destroy(sl->engine_object);

   if (sl->lock)
      slock_free(sl->lock);
   if (sl->cond)
      scond_free(sl->cond);

   free(sl->buffer);
   free(sl->buffer_chunk);
   free(sl);
}
