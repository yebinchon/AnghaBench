#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_16__ {TYPE_4__* format; } ;
typedef  TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_17__ {TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_6__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_18__ {size_t current_track; } ;
typedef  TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_15__ {scalar_t__ codec; TYPE_3__* type; } ;
struct TYPE_13__ {int channels; int sample_rate; } ;
struct TYPE_14__ {TYPE_2__ audio; } ;
struct TYPE_12__ {TYPE_7__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 scalar_t__ VC_CONTAINER_CODEC_AMRNB ; 
 scalar_t__ VC_CONTAINER_CODEC_AMRWB ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC3( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];

   FUNC0(p_ctx, "vendor");
   FUNC1(p_ctx, "version");
   FUNC1(p_ctx, "mode_set");
   FUNC1(p_ctx, "mode_change_period");
   FUNC1(p_ctx, "frame_per_second");

   track->format->type->audio.channels = 1;
   if(track->format->codec == VC_CONTAINER_CODEC_AMRNB)
      track->format->type->audio.sample_rate = 8000;
   else if(track->format->codec == VC_CONTAINER_CODEC_AMRWB)
      track->format->type->audio.sample_rate = 16000;

   return FUNC2(p_ctx);
}