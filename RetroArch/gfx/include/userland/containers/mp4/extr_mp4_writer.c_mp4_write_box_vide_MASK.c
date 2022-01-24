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
struct TYPE_23__ {size_t current_track; } ;
typedef  TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_20__ {int codec; TYPE_3__* type; } ;
struct TYPE_18__ {int width; int height; } ;
struct TYPE_19__ {TYPE_2__ video; } ;
struct TYPE_17__ {TYPE_7__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_BOX_TYPE_ESDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
#define  VC_CONTAINER_CODEC_H263 130 
#define  VC_CONTAINER_CODEC_H264 129 
#define  VC_CONTAINER_CODEC_MP4V 128 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC8( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   unsigned int i;

   for(i = 0; i < 6; i++) FUNC3(p_ctx, 0, "reserved");
   FUNC1(p_ctx, 1, "data_reference_index");

   FUNC1(p_ctx, 0, "pre_defined");
   FUNC1(p_ctx, 0, "reserved");
   for(i = 0; i < 3; i++) FUNC2(p_ctx, 0, "pre_defined");
   FUNC1(p_ctx, track->format->type->video.width, "width");
   FUNC1(p_ctx, track->format->type->video.height, "height");
   FUNC2(p_ctx, 0x480000, "horizresolution"); /* 72 dpi */
   FUNC2(p_ctx, 0x480000, "vertresolution"); /* 72 dpi */
   FUNC2(p_ctx, 0, "reserved");
   FUNC1(p_ctx, 1, "frame_count");
   for(i = 0; i < 32; i++) FUNC4(p_ctx, 0);
   FUNC1(p_ctx, 0x18, "depth");
   FUNC1(p_ctx, -1, "pre_defined");

   switch(track->format->codec)
   {
   case VC_CONTAINER_CODEC_H264: return FUNC6(p_ctx);
   case VC_CONTAINER_CODEC_H263: return FUNC7(p_ctx);
   case VC_CONTAINER_CODEC_MP4V: return FUNC5(p_ctx, MP4_BOX_TYPE_ESDS);
   default: break;
   }

   return FUNC0(p_ctx);
}