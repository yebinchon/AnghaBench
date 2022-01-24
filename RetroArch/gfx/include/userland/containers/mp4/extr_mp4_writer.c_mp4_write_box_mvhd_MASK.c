#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_13__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_TRACK_T ;
struct TYPE_14__ {scalar_t__ last_pts; scalar_t__ first_pts; } ;
typedef  TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_15__ {scalar_t__ duration; unsigned int tracks_num; TYPE_2__** tracks; } ;
typedef  TYPE_4__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_12__ {TYPE_3__* module; } ;

/* Variables and functions */
 unsigned int MP4_64BITS_TIME ; 
 int MP4_TIMESCALE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,unsigned int,char*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC6( VC_CONTAINER_T *p_ctx )
{
   static uint32_t matrix[] = { 0x10000,0,0,0,0x10000,0,0,0,0x40000000 };
   unsigned int version = MP4_64BITS_TIME;
   unsigned int i;

   FUNC5(p_ctx,  version, "version");
   FUNC2(p_ctx, 0, "flags");

   /**/
   p_ctx->duration = 0;
   for(i = 0; i < p_ctx->tracks_num; i++)
   {
      VC_CONTAINER_TRACK_T *track = p_ctx->tracks[i];
      VC_CONTAINER_TRACK_MODULE_T *track_module = track->priv->module;
      int64_t track_duration = track_module->last_pts - track_module->first_pts;
      if(track_duration > p_ctx->duration)
         p_ctx->duration = track_duration;
   }

   if(version)
   {
      FUNC4(p_ctx, 0, "creation_time");
      FUNC4(p_ctx, 0, "modification_time");
      FUNC3(p_ctx, MP4_TIMESCALE, "timescale");
      FUNC4(p_ctx, p_ctx->duration * MP4_TIMESCALE / 1000000, "duration");
   }
   else
   {
      FUNC3(p_ctx, 0, "creation_time");
      FUNC3(p_ctx, 0, "modification_time");
      FUNC3(p_ctx, MP4_TIMESCALE, "timescale");
      FUNC3(p_ctx, p_ctx->duration * MP4_TIMESCALE / 1000000, "duration");
   }

   FUNC3(p_ctx, 0x10000, "rate"); /* 1.0 */
   FUNC1(p_ctx, 0x100, "volume"); /* full volume */
   FUNC1(p_ctx, 0, "reserved");
   for(i = 0; i < 2; i++)
      FUNC3(p_ctx, 0, "reserved");
   for(i = 0; i < 9; i++) /* unity matrix */
      FUNC3(p_ctx, matrix[i], "matrix");
   for(i = 0; i < 6; i++)
      FUNC3(p_ctx, 0, "pre_defined");
   FUNC3(p_ctx, p_ctx->tracks_num + 1, "next_track_ID");

   return FUNC0(p_ctx);
}