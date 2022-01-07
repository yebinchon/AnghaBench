
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int time_setup; int time_enable; int time_disable; int name; } ;
struct TYPE_9__ {unsigned int connection_num; double decoded_frames; double time_playback; unsigned int component_num; TYPE_1__* component; int event; TYPE_4__** connection; int uri; } ;
struct TYPE_8__ {int time_cleanup; int time_setup; int name; int comp; } ;
typedef TYPE_2__ MMALPLAY_T ;


 int LOG_INFO (char*,...) ;
 int LOG_TRACE (char*,TYPE_2__*,int ) ;
 int free (TYPE_2__*) ;
 int mmal_component_destroy (int ) ;
 int mmal_connection_destroy (TYPE_4__*) ;
 int mmal_connection_disable (TYPE_4__*) ;
 void* vcos_getmicrosecs () ;
 int vcos_semaphore_delete (int *) ;

void mmalplay_destroy(MMALPLAY_T *ctx)
{
   unsigned int i;

   LOG_TRACE("%p, %s", ctx, ctx->uri);


   for (i = ctx->connection_num; i; i--)
      mmal_connection_disable(ctx->connection[i-1]);

   LOG_INFO("--- statistics ---");
   LOG_INFO("decoded %i frames in %.2fs (%.2ffps)", (int)ctx->decoded_frames,
            ctx->time_playback / 1000000.0, ctx->decoded_frames * 1000000.0 / ctx->time_playback);

   for (i = 0; i < ctx->connection_num; i++)
   {
      LOG_INFO("%s", ctx->connection[i]->name);
      LOG_INFO("- setup time: %ims",
               (int)(ctx->connection[i]->time_setup / 1000));
      LOG_INFO("- enable time: %ims, disable time: %ims",
               (int)(ctx->connection[i]->time_enable / 1000),
               (int)(ctx->connection[i]->time_disable / 1000));
   }


   for (i = ctx->connection_num; i; i--)
      mmal_connection_destroy(ctx->connection[i-1]);


   for (i = ctx->component_num; i; i--)
   {
      ctx->component[i-1].time_cleanup = vcos_getmicrosecs();
      mmal_component_destroy(ctx->component[i-1].comp);
      ctx->component[i-1].time_cleanup = vcos_getmicrosecs() - ctx->component[i-1].time_cleanup;
   }

   vcos_semaphore_delete(&ctx->event);

   for (i = 0; i < ctx->component_num; i++)
   {
      LOG_INFO("%s:", ctx->component[i].name);
      LOG_INFO("- setup time: %ims, cleanup time: %ims",
               (int)(ctx->component[i].time_setup / 1000),
               (int)(ctx->component[i].time_cleanup / 1000));
   }
   LOG_INFO("-----------------");

   free(ctx);
}
