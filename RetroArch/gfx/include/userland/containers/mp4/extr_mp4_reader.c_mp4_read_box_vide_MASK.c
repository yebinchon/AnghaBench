#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_20__ {TYPE_4__* format; } ;
typedef  TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_21__ {TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_6__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_22__ {size_t current_track; } ;
typedef  TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_19__ {TYPE_3__* type; } ;
struct TYPE_17__ {void* height; void* width; } ;
struct TYPE_18__ {TYPE_2__ video; } ;
struct TYPE_16__ {TYPE_7__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP4_BOX_TYPE_VIDE ; 
 void* FUNC0 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC7( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   unsigned int i;

   for(i = 0; i < 6; i++) FUNC4(p_ctx, "reserved");
   FUNC2(p_ctx, "data_reference_index");

   FUNC2(p_ctx, "pre_defined");
   FUNC2(p_ctx, "reserved");
   for(i = 0; i < 3; i++) FUNC3(p_ctx, "pre_defined");
   track->format->type->video.width = FUNC0(p_ctx, "width");
   track->format->type->video.height = FUNC0(p_ctx, "height");
   FUNC3(p_ctx, "horizresolution"); /* dpi */
   FUNC3(p_ctx, "vertresolution"); /* dpi */
   FUNC3(p_ctx, "reserved");
   FUNC2(p_ctx, "frame_count");
   FUNC1(p_ctx, 32);
   FUNC2(p_ctx, "depth");
   FUNC2(p_ctx, "pre_defined");

   if(size > 0)
      return FUNC6( p_ctx, size, MP4_BOX_TYPE_VIDE );

   return FUNC5(p_ctx);
}