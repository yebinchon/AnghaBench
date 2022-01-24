#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_18__ {TYPE_2__* priv; } ;
typedef  TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_19__ {unsigned int tracks_num; TYPE_5__** tracks; TYPE_4__* priv; } ;
typedef  TYPE_6__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_16__ {int /*<<< orphan*/  start; } ;
struct TYPE_20__ {TYPE_3__ packet_state; int /*<<< orphan*/  data_offset; } ;
typedef  TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_17__ {TYPE_7__* module; } ;
struct TYPE_15__ {TYPE_1__* module; } ;
struct TYPE_14__ {TYPE_3__* p_packet_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC6( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   unsigned int i;
   FUNC5(size);

   FUNC0(p_ctx, "File ID");
   FUNC2(p_ctx, "Total Data Packets");
   FUNC1(p_ctx, "Reserved");
   module->data_offset = FUNC3(p_ctx);

   /* Initialise state for all tracks */
   module->packet_state.start = module->data_offset;
   for(i = 0; i < p_ctx->tracks_num; i++)
   {
      VC_CONTAINER_TRACK_T *p_track = p_ctx->tracks[i];
      p_track->priv->module->p_packet_state = &module->packet_state;
   }

   return FUNC4(p_ctx);
}