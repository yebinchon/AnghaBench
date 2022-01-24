#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_19__ {TYPE_4__* format; } ;
typedef  TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_20__ {TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_6__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_21__ {size_t current_track; } ;
typedef  TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_18__ {TYPE_3__* type; } ;
struct TYPE_16__ {void* sample_rate; void* bits_per_sample; void* channels; } ;
struct TYPE_17__ {TYPE_2__ audio; } ;
struct TYPE_15__ {TYPE_7__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_BOX_TYPE_SOUN ; 
 void* FUNC0 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC6( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   unsigned int i, version = 0;

   for(i = 0; i < 6; i++) FUNC3(p_ctx, "reserved");
   FUNC1(p_ctx, "data_reference_index");

   version = FUNC0(p_ctx, "version");
   FUNC1(p_ctx, "revision_level");
   FUNC2(p_ctx, "vendor");

   track->format->type->audio.channels = FUNC0(p_ctx, "channelcount");
   track->format->type->audio.bits_per_sample = FUNC0(p_ctx, "samplesize");
   FUNC1(p_ctx, "pre_defined");
   FUNC1(p_ctx, "reserved");
   track->format->type->audio.sample_rate = FUNC0(p_ctx, "samplerate");
   FUNC1(p_ctx, "samplerate_fp_low");

   if(version == 1)
   {
      FUNC2(p_ctx, "samples_per_packet");
      FUNC2(p_ctx, "bytes_per_packet");
      FUNC2(p_ctx, "bytes_per_frame");
      FUNC2(p_ctx, "bytes_per_sample");
   }

   if(size > 0)
      return FUNC5( p_ctx, size, MP4_BOX_TYPE_SOUN );

   return FUNC4(p_ctx);
}