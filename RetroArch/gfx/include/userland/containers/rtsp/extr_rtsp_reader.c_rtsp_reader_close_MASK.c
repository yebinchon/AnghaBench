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
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_5__* session_header; TYPE_5__* control_uri; scalar_t__ reader_uri; scalar_t__ reader; } ;
typedef  TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_16__ {unsigned int tracks_num; TYPE_2__* priv; TYPE_7__** tracks; } ;
typedef  TYPE_4__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_17__ {scalar_t__ header_list; struct TYPE_17__* comms_buffer; } ;
typedef  TYPE_5__ VC_CONTAINER_MODULE_T ;
struct TYPE_18__ {TYPE_1__* priv; } ;
struct TYPE_14__ {TYPE_5__* module; } ;
struct TYPE_13__ {TYPE_3__* module; } ;

/* Variables and functions */
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC7( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   unsigned int i;

   for(i = 0; i < p_ctx->tracks_num; i++)
   {
      VC_CONTAINER_TRACK_MODULE_T *t_module = p_ctx->tracks[i]->priv->module;

      if (t_module->control_uri && t_module->session_header)
      {
         /* Send the teardown message and wait for a response, although it
          * isn't important whether it was successful or not. */
         if (FUNC2(p_ctx, t_module) == VC_CONTAINER_SUCCESS)
            (void)FUNC1(p_ctx);
      }

      if (t_module->reader)
         FUNC3(t_module->reader);
      if (t_module->reader_uri)
         FUNC6(t_module->reader_uri);
      if (t_module->control_uri)
         FUNC0(t_module->control_uri);
      if (t_module->session_header)
         FUNC0(t_module->session_header);
      FUNC4(p_ctx, p_ctx->tracks[i]);  /* Also need to close track's reader */
   }
   p_ctx->tracks = NULL;
   p_ctx->tracks_num = 0;
   if (module)
   {
      if (module->comms_buffer)
         FUNC0(module->comms_buffer);
      if (module->header_list)
         FUNC5(module->header_list);
      FUNC0(module);
   }
   p_ctx->priv->module = 0;
   return VC_CONTAINER_SUCCESS;
}