#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_16__ {int tracks_num; TYPE_2__* priv; int /*<<< orphan*/  capabilities; TYPE_5__** tracks; } ;
typedef  TYPE_3__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_17__ {TYPE_5__* track; } ;
typedef  TYPE_4__ VC_CONTAINER_MODULE_T ;
struct TYPE_18__ {int is_enabled; TYPE_1__* format; } ;
struct TYPE_15__ {int /*<<< orphan*/  pf_seek; int /*<<< orphan*/  pf_read; int /*<<< orphan*/  (* pf_close ) (TYPE_3__*) ;TYPE_4__* module; } ;
struct TYPE_14__ {int /*<<< orphan*/  codec; int /*<<< orphan*/  es_type; } ;

/* Variables and functions */
 int HEADER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,...) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  VC_CONTAINER_CAPS_CAN_SEEK ; 
 int /*<<< orphan*/  VC_CONTAINER_CODEC_MIDI ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  VC_CONTAINER_ES_TYPE_AUDIO ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 TYPE_4__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  qsynth_reader_read ; 
 int /*<<< orphan*/  qsynth_reader_seek ; 
 TYPE_5__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 

VC_CONTAINER_STATUS_T FUNC8( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = 0;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   uint8_t header[HEADER_LENGTH];

   /* Check the file header */
   if((FUNC1(p_ctx, header, HEADER_LENGTH) != HEADER_LENGTH) ||
      FUNC5(header, 0, 0, 0, 0) != VC_CONTAINER_SUCCESS)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   /* Allocate our context */
   module = FUNC2(sizeof(*module));
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   FUNC3(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks_num = 1;
   p_ctx->tracks = &module->track;
   p_ctx->tracks[0] = FUNC7(p_ctx, 0);
   if(!p_ctx->tracks[0]) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   p_ctx->tracks[0]->format->es_type = VC_CONTAINER_ES_TYPE_AUDIO;
   p_ctx->tracks[0]->format->codec = VC_CONTAINER_CODEC_MIDI;
   p_ctx->tracks[0]->is_enabled = true;

   if((status = FUNC4(p_ctx)) != VC_CONTAINER_SUCCESS) goto error;

   FUNC0(p_ctx, "using qsynth reader");

   p_ctx->capabilities = VC_CONTAINER_CAPS_CAN_SEEK;

   p_ctx->priv->pf_close = qsynth_reader_close;
   p_ctx->priv->pf_read = qsynth_reader_read;
   p_ctx->priv->pf_seek = qsynth_reader_seek;
   return VC_CONTAINER_SUCCESS;

 error:
   FUNC0(p_ctx, "qsynth: error opening stream (%i)", status);
   if(module) FUNC6(p_ctx);
   return status;
}