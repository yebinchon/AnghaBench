
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int tracks_num; TYPE_2__* priv; TYPE_5__** tracks; } ;
typedef TYPE_3__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_17__ {TYPE_5__* track; } ;
typedef TYPE_4__ VC_CONTAINER_MODULE_T ;
struct TYPE_18__ {int is_enabled; TYPE_1__* format; } ;
struct TYPE_15__ {int pf_seek; int pf_read; int (* pf_close ) (TYPE_3__*) ;TYPE_4__* module; } ;
struct TYPE_14__ {int codec; int es_type; } ;


 int LOG_DEBUG (TYPE_3__*,char*,...) ;
 int VC_CONTAINER_CODEC_RV40 ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_ES_TYPE_VIDEO ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 TYPE_4__* malloc (int) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ rv9_read_file_header (TYPE_3__*,TYPE_5__*) ;
 int rv9_reader_close (TYPE_3__*) ;
 int rv9_reader_read ;
 int rv9_reader_seek ;
 TYPE_5__* vc_container_allocate_track (TYPE_3__*,int ) ;

VC_CONTAINER_STATUS_T rv9_reader_open( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = 0;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;


   if(rv9_read_file_header(p_ctx, 0) != VC_CONTAINER_SUCCESS)
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
   p_ctx->tracks[0]->format->codec = VC_CONTAINER_CODEC_RV40;
   p_ctx->tracks[0]->is_enabled = 1;

   if((status = rv9_read_file_header(p_ctx, p_ctx->tracks[0])) != VC_CONTAINER_SUCCESS) goto error;

   LOG_DEBUG(p_ctx, "using rv9 reader");

   p_ctx->priv->pf_close = rv9_reader_close;
   p_ctx->priv->pf_read = rv9_reader_read;
   p_ctx->priv->pf_seek = rv9_reader_seek;
   return VC_CONTAINER_SUCCESS;

 error:
   LOG_DEBUG(p_ctx, "rv9: error opening stream (%i)", status);
   if(module) rv9_reader_close(p_ctx);
   return status;
}
