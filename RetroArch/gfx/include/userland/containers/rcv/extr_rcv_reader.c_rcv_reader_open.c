
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
typedef int dummy ;
struct TYPE_18__ {int tracks_num; TYPE_2__* priv; int capabilities; TYPE_5__** tracks; } ;
typedef TYPE_3__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_19__ {int index; TYPE_5__* track; } ;
typedef TYPE_4__ VC_CONTAINER_MODULE_T ;
struct TYPE_20__ {int is_enabled; TYPE_1__* format; } ;
struct TYPE_17__ {int pf_seek; int pf_read; int (* pf_close ) (TYPE_3__*) ;TYPE_4__* module; } ;
struct TYPE_16__ {int codec; int es_type; } ;


 int LI32 (int*) ;
 int LOG_DEBUG (TYPE_3__*,char*) ;
 int PEEK_BYTES (TYPE_3__*,int*,int) ;
 int STREAM_POSITION (TYPE_3__*) ;
 scalar_t__ STREAM_SEEKABLE (TYPE_3__*) ;
 int VC_CONTAINER_CAPS_CAN_SEEK ;
 int VC_CONTAINER_CODEC_WMV3 ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_ES_TYPE_VIDEO ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 TYPE_4__* malloc (int) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ rcv_read_header (TYPE_3__*) ;
 int rcv_reader_close (TYPE_3__*) ;
 int rcv_reader_read ;
 int rcv_reader_seek ;
 TYPE_5__* vc_container_allocate_track (TYPE_3__*,int ) ;
 int vc_container_index_add (int ,long long,int ) ;
 scalar_t__ vc_container_index_create (int *,int) ;

VC_CONTAINER_STATUS_T rcv_reader_open( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = 0;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   uint8_t dummy[8];


   if((PEEK_BYTES(p_ctx, dummy, sizeof(dummy)) != sizeof(dummy)) ||
      dummy[3] != 0xc5 || LI32(dummy+4) != 0x4)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;


   module = malloc(sizeof(*module));
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   memset(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks_num = 1;
   p_ctx->tracks = &module->track;
   p_ctx->tracks[0] = vc_container_allocate_track(p_ctx, 0);
   if(!p_ctx->tracks[0]) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   p_ctx->tracks[0]->format->es_type = VC_CONTAINER_ES_TYPE_VIDEO;
   p_ctx->tracks[0]->format->codec = VC_CONTAINER_CODEC_WMV3;
   p_ctx->tracks[0]->is_enabled = 1;

   if((status = rcv_read_header(p_ctx)) != VC_CONTAINER_SUCCESS) goto error;

   LOG_DEBUG(p_ctx, "using rcv reader");

   if(vc_container_index_create(&module->index, 512) == VC_CONTAINER_SUCCESS)
      vc_container_index_add(module->index, 0LL, STREAM_POSITION(p_ctx));

   if(STREAM_SEEKABLE(p_ctx))
      p_ctx->capabilities |= VC_CONTAINER_CAPS_CAN_SEEK;

   p_ctx->priv->pf_close = rcv_reader_close;
   p_ctx->priv->pf_read = rcv_reader_read;
   p_ctx->priv->pf_seek = rcv_reader_seek;
   return VC_CONTAINER_SUCCESS;

 error:
   if(module) rcv_reader_close(p_ctx);
   return status;
}
