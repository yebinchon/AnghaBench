
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;


typedef int connections ;
struct TYPE_21__ {int output_num; } ;
struct TYPE_20__ {char const* uri; unsigned int num; unsigned int connection_num; TYPE_15__* connection; int reader_audio; int reader_video; TYPE_2__ options; int event; } ;
struct TYPE_19__ {int flags; int in; int out; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_COMPONENT_T ;
typedef TYPE_1__ MMALPLAY_T ;
typedef TYPE_2__ MMALPLAY_OPTIONS_T ;
typedef TYPE_1__ MMALPLAY_CONNECTIONS_T ;


 int LOG_TRACE (char*,char const*) ;
 int MMALPLAY_MAX_RENDERERS ;
 int MMAL_COMPONENT_DEFAULT_CONTAINER_READER ;
 scalar_t__ MMAL_ENOMEM ;
 scalar_t__ MMAL_ENOSPC ;
 int MMAL_MAX (int ,int) ;
 int MMAL_MIN (int ,int ) ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ VCOS_SUCCESS ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ mmal_connection_enable (TYPE_15__) ;
 int * mmalplay_component_create (TYPE_1__*,int ,scalar_t__*) ;
 scalar_t__ mmalplay_connection_create (TYPE_1__*,int ,int ,int ) ;
 int mmalplay_destroy (TYPE_1__*) ;
 scalar_t__ mmalplay_pipeline_audio_create (TYPE_1__*,int ,TYPE_1__*) ;
 scalar_t__ mmalplay_pipeline_clock_create (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ mmalplay_pipeline_video_create (TYPE_1__*,int ,TYPE_1__*) ;
 scalar_t__ vcos_semaphore_create (int *,char*,int) ;

MMALPLAY_T *mmalplay_create(const char *uri, MMALPLAY_OPTIONS_T *opts, MMAL_STATUS_T *pstatus)
{
   MMAL_STATUS_T status = MMAL_SUCCESS, status_audio, status_video, status_clock;
   MMALPLAY_T *ctx;
   MMAL_COMPONENT_T *component;
   MMALPLAY_CONNECTIONS_T connections;
   unsigned int i;

   LOG_TRACE("%s", uri);

   if (pstatus) *pstatus = MMAL_ENOMEM;


   ctx = malloc(sizeof(MMALPLAY_T));
   if (!ctx)
      return ((void*)0);
   memset(ctx, 0, sizeof(*ctx));
   memset(&connections, 0, sizeof(connections));
   if (vcos_semaphore_create(&ctx->event, "MMALTest", 1) != VCOS_SUCCESS)
   {
      free(ctx);
      return ((void*)0);
   }

   ctx->uri = uri;
   if (opts)
      ctx->options = *opts;

   ctx->options.output_num = MMAL_MAX(ctx->options.output_num, 1);
   ctx->options.output_num = MMAL_MIN(ctx->options.output_num, MMALPLAY_MAX_RENDERERS);
   connections.num = 0;


   component = mmalplay_component_create(ctx, MMAL_COMPONENT_DEFAULT_CONTAINER_READER, &status);
   if (!component)
      goto error;

   status_video = mmalplay_pipeline_video_create(ctx, ctx->reader_video, &connections);
   status_audio = mmalplay_pipeline_audio_create(ctx, ctx->reader_audio, &connections);
   status_clock = mmalplay_pipeline_clock_create(ctx, &connections);
   if (status_video != MMAL_SUCCESS && status_audio != MMAL_SUCCESS && status_clock != MMAL_SUCCESS)
   {
      status = status_video;
      goto error;
   }


   for (i = 0; i < connections.num; i++)
   {
      status = mmalplay_connection_create(ctx, connections.connection[i].out, connections.connection[i].in,
            connections.connection[i].flags);
      if (status != MMAL_SUCCESS)
         goto error;
   }


   for (i = 0; i < ctx->connection_num; i++)
   {
      status = mmal_connection_enable(ctx->connection[i]);
      if (status != MMAL_SUCCESS)
         goto error;
   }

   if (pstatus) *pstatus = MMAL_SUCCESS;
   return ctx;

 error:
   mmalplay_destroy(ctx);
   if (status == MMAL_SUCCESS) status = MMAL_ENOSPC;
   if (pstatus) *pstatus = status;
   return ((void*)0);
}
