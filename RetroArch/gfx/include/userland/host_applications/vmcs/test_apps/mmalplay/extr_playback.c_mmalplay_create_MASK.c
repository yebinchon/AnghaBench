#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  connections ;
struct TYPE_21__ {int /*<<< orphan*/  output_num; } ;
struct TYPE_20__ {char const* uri; unsigned int num; unsigned int connection_num; TYPE_15__* connection; int /*<<< orphan*/  reader_audio; int /*<<< orphan*/  reader_video; TYPE_2__ options; int /*<<< orphan*/  event; } ;
struct TYPE_19__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  in; int /*<<< orphan*/  out; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_T ;
typedef  TYPE_1__ MMALPLAY_T ;
typedef  TYPE_2__ MMALPLAY_OPTIONS_T ;
typedef  TYPE_1__ MMALPLAY_CONNECTIONS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  MMALPLAY_MAX_RENDERERS ; 
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_CONTAINER_READER ; 
 scalar_t__ MMAL_ENOMEM ; 
 scalar_t__ MMAL_ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (TYPE_15__) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*,int) ; 

MMALPLAY_T *FUNC14(const char *uri, MMALPLAY_OPTIONS_T *opts, MMAL_STATUS_T *pstatus)
{
   MMAL_STATUS_T status = MMAL_SUCCESS, status_audio, status_video, status_clock;
   MMALPLAY_T *ctx;
   MMAL_COMPONENT_T *component;
   MMALPLAY_CONNECTIONS_T connections;
   unsigned int i;

   FUNC0("%s", uri);

   if (pstatus) *pstatus = MMAL_ENOMEM;

   /* Allocate and initialise context */
   ctx = FUNC4(sizeof(MMALPLAY_T));
   if (!ctx)
      return NULL;
   FUNC5(ctx, 0, sizeof(*ctx));
   FUNC5(&connections, 0, sizeof(connections));
   if (FUNC13(&ctx->event, "MMALTest", 1) != VCOS_SUCCESS)
   {
      FUNC3(ctx);
      return NULL;
   }

   ctx->uri = uri;
   if (opts)
      ctx->options = *opts;

   ctx->options.output_num = FUNC1(ctx->options.output_num, 1);
   ctx->options.output_num = FUNC2(ctx->options.output_num, MMALPLAY_MAX_RENDERERS);
   connections.num = 0;

   /* Create and setup the container reader component */
   component = FUNC7(ctx, MMAL_COMPONENT_DEFAULT_CONTAINER_READER, &status);
   if (!component)
      goto error;

   status_video = FUNC12(ctx, ctx->reader_video, &connections);
   status_audio = FUNC10(ctx, ctx->reader_audio, &connections);
   status_clock = FUNC11(ctx, &connections);
   if (status_video != MMAL_SUCCESS && status_audio != MMAL_SUCCESS && status_clock != MMAL_SUCCESS)
   {
      status = status_video;
      goto error;
   }

   /* Create our connections */
   for (i = 0; i < connections.num; i++)
   {
      status = FUNC8(ctx, connections.connection[i].out, connections.connection[i].in,
            connections.connection[i].flags);
      if (status != MMAL_SUCCESS)
         goto error;
   }

   /* Enable our connections */
   for (i = 0; i < ctx->connection_num; i++)
   {
      status = FUNC6(ctx->connection[i]);
      if (status != MMAL_SUCCESS)
         goto error;
   }

   if (pstatus) *pstatus = MMAL_SUCCESS;
   return ctx;

 error:
   FUNC9(ctx);
   if (status == MMAL_SUCCESS) status = MMAL_ENOSPC;
   if (pstatus) *pstatus = status;
   return NULL;
}