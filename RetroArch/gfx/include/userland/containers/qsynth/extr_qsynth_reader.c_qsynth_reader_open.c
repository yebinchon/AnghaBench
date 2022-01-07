
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {int tracks_num; TYPE_2__* priv; int capabilities; TYPE_5__** tracks; } ;
typedef TYPE_3__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_17__ {TYPE_5__* track; } ;
typedef TYPE_4__ VC_CONTAINER_MODULE_T ;
struct TYPE_18__ {int is_enabled; TYPE_1__* format; } ;
struct TYPE_15__ {int pf_seek; int pf_read; int (* pf_close ) (TYPE_3__*) ;TYPE_4__* module; } ;
struct TYPE_14__ {int codec; int es_type; } ;


 int HEADER_LENGTH ;
 int LOG_DEBUG (TYPE_3__*,char*,...) ;
 int PEEK_BYTES (TYPE_3__*,int *,int) ;
 int VC_CONTAINER_CAPS_CAN_SEEK ;
 int VC_CONTAINER_CODEC_MIDI ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_ES_TYPE_AUDIO ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 TYPE_4__* malloc (int) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ qsynth_get_duration (TYPE_3__*) ;
 scalar_t__ qsynth_read_header (int *,int ,int ,int ,int ) ;
 int qsynth_reader_close (TYPE_3__*) ;
 int qsynth_reader_read ;
 int qsynth_reader_seek ;
 TYPE_5__* vc_container_allocate_track (TYPE_3__*,int ) ;

VC_CONTAINER_STATUS_T qsynth_reader_open( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = 0;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   uint8_t header[HEADER_LENGTH];


   if((PEEK_BYTES(p_ctx, header, HEADER_LENGTH) != HEADER_LENGTH) ||
      qsynth_read_header(header, 0, 0, 0, 0) != VC_CONTAINER_SUCCESS)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;


   module = malloc(sizeof(*module));
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   memset(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks_num = 1;
   p_ctx->tracks = &module->track;
   p_ctx->tracks[0] = vc_container_allocate_track(p_ctx, 0);
   if(!p_ctx->tracks[0]) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   p_ctx->tracks[0]->format->es_type = VC_CONTAINER_ES_TYPE_AUDIO;
   p_ctx->tracks[0]->format->codec = VC_CONTAINER_CODEC_MIDI;
   p_ctx->tracks[0]->is_enabled = 1;

   if((status = qsynth_get_duration(p_ctx)) != VC_CONTAINER_SUCCESS) goto error;

   LOG_DEBUG(p_ctx, "using qsynth reader");

   p_ctx->capabilities = VC_CONTAINER_CAPS_CAN_SEEK;

   p_ctx->priv->pf_close = qsynth_reader_close;
   p_ctx->priv->pf_read = qsynth_reader_read;
   p_ctx->priv->pf_seek = qsynth_reader_seek;
   return VC_CONTAINER_SUCCESS;

 error:
   LOG_DEBUG(p_ctx, "qsynth: error opening stream (%i)", status);
   if(module) qsynth_reader_close(p_ctx);
   return status;
}
