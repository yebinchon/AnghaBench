#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_11__ ;

/* Type definitions */
struct TYPE_23__ {TYPE_3__* priv; TYPE_11__* format; } ;
typedef  TYPE_4__ VC_CONTAINER_TRACK_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_24__ {size_t tracks_num; TYPE_4__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_5__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_25__ {int /*<<< orphan*/  extradata_size; } ;
typedef  TYPE_6__ VC_CONTAINER_ES_FORMAT_T ;
struct TYPE_22__ {TYPE_2__* module; } ;
struct TYPE_21__ {char* uri; int /*<<< orphan*/  io; } ;
struct TYPE_20__ {int /*<<< orphan*/  uri; } ;
struct TYPE_19__ {int /*<<< orphan*/  codec; } ;

/* Variables and functions */
 char* ES_SUFFIX ; 
 scalar_t__ ES_SUFFIX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,char*) ; 
 size_t MAX_TRACKS ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  VC_CONTAINER_IO_MODE_WRITE ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,char*,char const*,size_t,char*) ; 
 unsigned int FUNC3 (char const*) ; 
 TYPE_4__* FUNC4 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC10( VC_CONTAINER_T *ctx,
   VC_CONTAINER_ES_FORMAT_T *format )
{
   VC_CONTAINER_TRACK_T *track = NULL;
   VC_CONTAINER_STATUS_T status;
   const char *uri = FUNC9(ctx->priv->uri);
   unsigned int uri_size = FUNC3(uri);

   /* Allocate and initialise track data */
   if (ctx->tracks_num >= MAX_TRACKS)
      return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;

   ctx->tracks[ctx->tracks_num] = track =
      FUNC4(ctx, sizeof(VC_CONTAINER_TRACK_MODULE_T) +
         uri_size + ES_SUFFIX_SIZE + 1);
   if (!track)
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

   if (format->extradata_size)
   {
      status = FUNC8(ctx, track, format->extradata_size);
      if (status != VC_CONTAINER_SUCCESS)
         goto error;
   }
   FUNC5(track->format, format, format->extradata_size);

   track->priv->module->uri = (char *)&track->priv->module[1];
   FUNC2(track->priv->module->uri, uri_size + ES_SUFFIX_SIZE + 1,
      ES_SUFFIX, uri, ctx->tracks_num, (char *)&track->format->codec);

   FUNC0(ctx, "opening elementary stream: %s", track->priv->module->uri);
   track->priv->module->io = FUNC7(track->priv->module->uri,
      VC_CONTAINER_IO_MODE_WRITE, &status);
   if (status != VC_CONTAINER_SUCCESS)
   {
      FUNC1(ctx, "error opening elementary stream: %s",
         track->priv->module->uri);
      goto error;
   }

   ctx->tracks_num++;
   return VC_CONTAINER_SUCCESS;

 error:
   if (track)
      FUNC6(ctx, track);
   return status;
}