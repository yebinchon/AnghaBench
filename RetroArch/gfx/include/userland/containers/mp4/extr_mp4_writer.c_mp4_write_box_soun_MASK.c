#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_4__* format; } ;
typedef  TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_22__ {TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_6__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_23__ {size_t current_track; scalar_t__ brand; } ;
typedef  TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_20__ {int codec; TYPE_3__* type; } ;
struct TYPE_18__ {unsigned int channels; int sample_rate; } ;
struct TYPE_19__ {TYPE_2__ audio; } ;
struct TYPE_17__ {TYPE_7__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_BOX_TYPE_ESDS ; 
 scalar_t__ MP4_BRAND_QT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
#define  VC_CONTAINER_CODEC_AMRNB 133 
#define  VC_CONTAINER_CODEC_AMRWB 132 
#define  VC_CONTAINER_CODEC_AMRWBP 131 
#define  VC_CONTAINER_CODEC_EVRC 130 
#define  VC_CONTAINER_CODEC_MP4A 129 
#define  VC_CONTAINER_CODEC_MPGA 128 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC8( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   unsigned int i, version = 0;

   for(i = 0; i < 6; i++) FUNC3(p_ctx, 0, "reserved");
   FUNC1(p_ctx, 1, "data_reference_index");

   if(module->brand == MP4_BRAND_QT)
   {
      if(track->format->codec == VC_CONTAINER_CODEC_MP4A) version = 1;
      FUNC1(p_ctx, version, "version");
      FUNC1(p_ctx, 0, "revision_level");
      FUNC2(p_ctx, 0, "vendor");
   }
   else
   {
      for(i = 0; i < 2; i++) FUNC2(p_ctx, 0, "reserved");
   }

   FUNC1(p_ctx, track->format->type->audio.channels, "channelcount");
   FUNC1(p_ctx, 0, "samplesize");
   FUNC1(p_ctx, 0, "pre_defined");
   FUNC1(p_ctx, 0, "reserved");
   FUNC2(p_ctx, track->format->type->audio.sample_rate << 16, "samplerate");

   if(module->brand == MP4_BRAND_QT && version == 1) /* FIXME */
   {
      FUNC2(p_ctx, 1024, "samples_per_packet");
      FUNC2(p_ctx, 1536, "bytes_per_packet");
      FUNC2(p_ctx, 2, "bytes_per_frame");
      FUNC2(p_ctx, 2, "bytes_per_sample");
   }

   switch(track->format->codec)
   {
   case VC_CONTAINER_CODEC_AMRNB:
   case VC_CONTAINER_CODEC_AMRWB:
      return FUNC5(p_ctx);
   case VC_CONTAINER_CODEC_AMRWBP:
      return FUNC6(p_ctx);
   case VC_CONTAINER_CODEC_EVRC:
      return FUNC7(p_ctx);
   case VC_CONTAINER_CODEC_MP4A:
   case VC_CONTAINER_CODEC_MPGA:
      return FUNC4(p_ctx, MP4_BOX_TYPE_ESDS);
   default: break;
   }

   return FUNC0(p_ctx);
}