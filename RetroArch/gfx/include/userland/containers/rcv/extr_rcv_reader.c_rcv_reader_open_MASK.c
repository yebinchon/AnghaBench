#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  dummy ;
struct TYPE_18__ {int tracks_num; TYPE_2__* priv; int /*<<< orphan*/  capabilities; TYPE_5__** tracks; } ;
typedef  TYPE_3__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_19__ {int /*<<< orphan*/  index; TYPE_5__* track; } ;
typedef  TYPE_4__ VC_CONTAINER_MODULE_T ;
struct TYPE_20__ {int is_enabled; TYPE_1__* format; } ;
struct TYPE_17__ {int /*<<< orphan*/  pf_seek; int /*<<< orphan*/  pf_read; int /*<<< orphan*/  (* pf_close ) (TYPE_3__*) ;TYPE_4__* module; } ;
struct TYPE_16__ {int /*<<< orphan*/  codec; int /*<<< orphan*/  es_type; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int FUNC2 (TYPE_3__*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  VC_CONTAINER_CAPS_CAN_SEEK ; 
 int /*<<< orphan*/  VC_CONTAINER_CODEC_WMV3 ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VC_CONTAINER_ES_TYPE_VIDEO ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 TYPE_4__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  rcv_reader_read ; 
 int /*<<< orphan*/  rcv_reader_seek ; 
 TYPE_5__* FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 

VC_CONTAINER_STATUS_T FUNC12( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = 0;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   uint8_t dummy[8];

   /* Quick check for a valid file header */
   if((FUNC2(p_ctx, dummy, sizeof(dummy)) != sizeof(dummy)) ||
      dummy[3] != 0xc5 || FUNC0(dummy+4) != 0x4)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   /* Allocate our context */
   module = FUNC5(sizeof(*module));
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   FUNC6(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks_num = 1;
   p_ctx->tracks = &module->track;
   p_ctx->tracks[0] = FUNC9(p_ctx, 0);
   if(!p_ctx->tracks[0]) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   p_ctx->tracks[0]->format->es_type = VC_CONTAINER_ES_TYPE_VIDEO;
   p_ctx->tracks[0]->format->codec = VC_CONTAINER_CODEC_WMV3;
   p_ctx->tracks[0]->is_enabled = true;

   if((status = FUNC7(p_ctx)) != VC_CONTAINER_SUCCESS) goto error;

   FUNC1(p_ctx, "using rcv reader");

   if(FUNC11(&module->index, 512) == VC_CONTAINER_SUCCESS)
      FUNC10(module->index, 0LL, FUNC3(p_ctx));

   if(FUNC4(p_ctx))
      p_ctx->capabilities |= VC_CONTAINER_CAPS_CAN_SEEK;

   p_ctx->priv->pf_close = rcv_reader_close;
   p_ctx->priv->pf_read = rcv_reader_read;
   p_ctx->priv->pf_seek = rcv_reader_seek;
   return VC_CONTAINER_SUCCESS;

 error:
   if(module) FUNC8(p_ctx);
   return status;
}