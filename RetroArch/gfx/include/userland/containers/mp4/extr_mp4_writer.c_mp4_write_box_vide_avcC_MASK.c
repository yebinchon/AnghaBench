#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* format; } ;
typedef  TYPE_3__ VC_CONTAINER_TRACK_T ;
struct TYPE_14__ {TYPE_3__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_4__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_15__ {size_t current_track; } ;
typedef  TYPE_5__ VC_CONTAINER_MODULE_T ;
struct TYPE_12__ {scalar_t__ extradata_size; int /*<<< orphan*/  extradata; } ;
struct TYPE_11__ {TYPE_5__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__,char*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC5( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];

   FUNC4(p_ctx, track->format->extradata_size + 8, "size");
   FUNC3(p_ctx, FUNC1('a','v','c','C'), "type");
   FUNC2(p_ctx, track->format->extradata, track->format->extradata_size);

   return FUNC0(p_ctx);
}