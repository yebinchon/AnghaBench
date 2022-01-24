#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_17__ {scalar_t__ sample_size; } ;
typedef  TYPE_4__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_18__ {TYPE_3__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_5__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_19__ {size_t current_track; } ;
typedef  TYPE_6__ VC_CONTAINER_MODULE_T ;
struct TYPE_16__ {TYPE_2__* priv; } ;
struct TYPE_15__ {TYPE_4__* module; } ;
struct TYPE_14__ {TYPE_6__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  MP4_SAMPLE_TABLE_STSZ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*) ; 
 scalar_t__ FUNC3 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC6( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_MODULE_T *track_module = p_ctx->tracks[module->current_track]->priv->module;
   uint32_t entries;

   FUNC2(p_ctx, "version");
   FUNC1(p_ctx, "flags");

   track_module->sample_size = FUNC3(p_ctx, "sample_size");
   if(track_module->sample_size) return FUNC4(p_ctx);

   entries = FUNC0(p_ctx, "sample_count");
   return FUNC5( p_ctx, MP4_SAMPLE_TABLE_STSZ, entries, size );
}