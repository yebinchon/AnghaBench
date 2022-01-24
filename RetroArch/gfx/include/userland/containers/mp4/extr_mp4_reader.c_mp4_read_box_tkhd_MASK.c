#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int int64_t ;
struct TYPE_14__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_15__ {int timescale; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_13__ {TYPE_3__* module; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,char*) ; 
 int FUNC1 (TYPE_2__*,char*) ; 
 int FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC8( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   uint32_t i, version;
   int64_t duration;

   version = FUNC2(p_ctx, "version");
   FUNC4(p_ctx, "flags");

   if(version)
   {
      FUNC6(p_ctx, "creation_time");
      FUNC6(p_ctx, "modification_time");
      FUNC5(p_ctx, "track_ID");
      FUNC5(p_ctx, "reserved");
      duration = FUNC1(p_ctx, "duration");
   }
   else
   {
      FUNC5(p_ctx, "creation_time");
      FUNC5(p_ctx, "modification_time");
      FUNC5(p_ctx, "track_ID");
      FUNC5(p_ctx, "reserved");
      duration = FUNC0(p_ctx, "duration");
   }

   if(module->timescale)
      duration = duration * 1000000 / module->timescale;

   for(i = 0; i < 2; i++) FUNC5(p_ctx, "reserved");
   FUNC3(p_ctx, "layer");
   FUNC3(p_ctx, "alternate_group");
   FUNC3(p_ctx, "volume");
   FUNC3(p_ctx, "reserved");
   for(i = 0; i < 9; i++) FUNC5(p_ctx, "matrix");

   FUNC5(p_ctx, "width");
   FUNC5(p_ctx, "height");

   return FUNC7(p_ctx);
}