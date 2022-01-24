#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* priv; TYPE_3__* out; TYPE_3__* in; } ;
typedef  TYPE_1__ VC_PACKETIZER_T ;
struct TYPE_13__ {int /*<<< orphan*/  time; int /*<<< orphan*/  stream; } ;
typedef  TYPE_2__ VC_PACKETIZER_PRIVATE_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_FOURCC_T ;
struct TYPE_14__ {int /*<<< orphan*/  codec_variant; scalar_t__ extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  TYPE_3__ VC_CONTAINER_ES_FORMAT_T ;

/* Variables and functions */
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*,scalar_t__) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 

VC_PACKETIZER_T *FUNC8( VC_CONTAINER_ES_FORMAT_T *in,
   VC_CONTAINER_FOURCC_T out_variant, VC_CONTAINER_STATUS_T *p_status )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_PACKETIZER_T *p_ctx = 0;

   /* Allocate our context before trying out the different packetizers */
   p_ctx = FUNC1( sizeof(*p_ctx) + sizeof(*p_ctx->priv));
   if(!p_ctx) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   FUNC2(p_ctx, 0, sizeof(*p_ctx) + sizeof(*p_ctx->priv));
   p_ctx->priv = (VC_PACKETIZER_PRIVATE_T *)(p_ctx + 1);
   FUNC0( &p_ctx->priv->stream );

   p_ctx->in = FUNC4(in->extradata_size);
   if(!p_ctx->in) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   p_ctx->out = FUNC4(in->extradata_size);
   if(!p_ctx->out) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }

   FUNC3( p_ctx->in, in, in->extradata_size );
   p_ctx->in->extradata_size = 0;
   FUNC3( p_ctx->out, p_ctx->in, in->extradata_size );
   p_ctx->in->extradata_size = in->extradata_size;
   p_ctx->out->extradata = p_ctx->in->extradata;
   p_ctx->out->extradata_size = p_ctx->in->extradata_size;
   p_ctx->out->codec_variant = out_variant;

   FUNC5(&p_ctx->priv->time, 1000000);

   status = FUNC7(p_ctx);
   if(status != VC_CONTAINER_SUCCESS)
      goto error;

 end:
   if(p_status) *p_status = status;
   return p_ctx;

 error:
   if(p_ctx) FUNC6(p_ctx);
   p_ctx = NULL;
   goto end;
}