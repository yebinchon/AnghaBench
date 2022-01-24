#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int int64_t ;
struct TYPE_29__ {int is_enabled; TYPE_4__* format; TYPE_3__* priv; } ;
typedef  TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_30__ {TYPE_1__* priv; } ;
typedef  TYPE_6__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_31__ {int time_offset; } ;
typedef  TYPE_7__ VC_CONTAINER_MODULE_T ;
typedef  scalar_t__ VC_CONTAINER_ES_TYPE_T ;
struct TYPE_28__ {int codec; int /*<<< orphan*/  flags; scalar_t__ es_type; } ;
struct TYPE_27__ {TYPE_2__* module; } ;
struct TYPE_26__ {int b_valid; } ;
struct TYPE_25__ {TYPE_7__* module; } ;
typedef  int /*<<< orphan*/  GUID_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,unsigned int,int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC1 (TYPE_6__*,unsigned int,char*) ; 
 unsigned int FUNC2 (TYPE_6__*,unsigned int,char*) ; 
 int FUNC3 (TYPE_6__*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,unsigned int) ; 
 unsigned int FUNC8 (TYPE_6__*) ; 
 scalar_t__ FUNC9 (TYPE_6__*) ; 
 int FUNC10 (int) ; 
#define  VC_CONTAINER_CODEC_MPGA 128 
 scalar_t__ VC_CONTAINER_ERROR_CORRUPTED ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  VC_CONTAINER_ES_FORMAT_FLAG_FRAMED ; 
 scalar_t__ VC_CONTAINER_ES_TYPE_AUDIO ; 
 scalar_t__ VC_CONTAINER_ES_TYPE_UNKNOWN ; 
 scalar_t__ VC_CONTAINER_ES_TYPE_VIDEO ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  asf_guid_stream_type_audio ; 
 int /*<<< orphan*/  asf_guid_stream_type_video ; 
 scalar_t__ FUNC11 (TYPE_6__*,TYPE_5__*,unsigned int) ; 
 scalar_t__ FUNC12 (TYPE_6__*,TYPE_5__*,unsigned int) ; 
 TYPE_5__* FUNC13 (TYPE_6__*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC15( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *p_track;
   unsigned int ts_length, flags;
   VC_CONTAINER_ES_TYPE_T type = VC_CONTAINER_ES_TYPE_UNKNOWN;
   GUID_T stream_type;
   int64_t offset;

   FUNC0(p_ctx, size, &stream_type, "Stream Type");
   FUNC4(p_ctx, size, "Error Correction Type");

   /* The time_offset field is in 100nS units. Scale back to uS */
   module->time_offset = FUNC3(p_ctx, size, "Time Offset") / FUNC10(10);
   ts_length = FUNC2(p_ctx, size, "Type-Specific Data Length");
   FUNC5(p_ctx, size, "Error Correction Data Length");
   flags = FUNC1(p_ctx, size, "Flags");
   FUNC5(p_ctx, size, "Reserved");

   FUNC6(p_ctx, size);

   /* Zero is not a valid stream id */
   if(!(flags & 0x7F)) goto skip;

   if(!FUNC14(&stream_type, &asf_guid_stream_type_video, sizeof(GUID_T)))
      type = VC_CONTAINER_ES_TYPE_VIDEO;
   else if(!FUNC14(&stream_type, &asf_guid_stream_type_audio, sizeof(GUID_T)))
      type = VC_CONTAINER_ES_TYPE_AUDIO;

   /* Check we know what to do with this track */
   if(type == VC_CONTAINER_ES_TYPE_UNKNOWN) goto skip;

   /* Sanity check sizes */
   if(ts_length > size) return VC_CONTAINER_ERROR_CORRUPTED;

   p_track = FUNC13( p_ctx, flags, true);
   if(!p_track) return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;

   p_track->format->es_type = type;

   offset = FUNC8(p_ctx);
   if(type == VC_CONTAINER_ES_TYPE_AUDIO)
      status = FUNC12(p_ctx, p_track, (int64_t)ts_length);
   else if(type == VC_CONTAINER_ES_TYPE_VIDEO)
      status = FUNC11(p_ctx, p_track, (int64_t)ts_length);
   size -= FUNC8(p_ctx) - offset;

   if(status) return status;

   p_track->priv->module->b_valid = true;
   p_track->is_enabled = true;
   p_track->format->flags |= VC_CONTAINER_ES_FORMAT_FLAG_FRAMED;

   /* Codec specific work-arounds */
   switch(p_track->format->codec)
   {
   case VC_CONTAINER_CODEC_MPGA:
      /* Can't guarantee that the data is framed */
      p_track->format->flags &= ~VC_CONTAINER_ES_FORMAT_FLAG_FRAMED;
      break;
   default: break;
   }

 skip:
   if(size) FUNC7(p_ctx, size);
   return FUNC9(p_ctx);
}