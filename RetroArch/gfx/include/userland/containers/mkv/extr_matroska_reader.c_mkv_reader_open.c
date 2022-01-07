
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int64_t ;
struct TYPE_18__ {int duration; scalar_t__ size; int capabilities; TYPE_1__* priv; int tracks_num; int tracks; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_17__ {TYPE_2__* levels; } ;
struct TYPE_19__ {int duration; int timecode_scale; TYPE_3__ state; scalar_t__ tags_offset; scalar_t__ cues_offset; scalar_t__ cluster_offset; int is_doctype_valid; int elements_list; int tracks; } ;
typedef TYPE_5__ VC_CONTAINER_MODULE_T ;
struct TYPE_16__ {scalar_t__ offset; } ;
struct TYPE_15__ {int pf_seek; int pf_read; int (* pf_close ) (TYPE_4__*) ;TYPE_5__* module; } ;


 int INT64_C (int) ;
 int LOG_DEBUG (TYPE_4__*,char*,scalar_t__) ;
 int MKV_ELEMENT_ID_SEGMENT ;
 int MKV_ELEMENT_ID_UNKNOWN ;
 int PEEK_BYTES (TYPE_4__*,int*,int) ;
 scalar_t__ SEEK (TYPE_4__*,scalar_t__) ;
 int STREAM_SEEKABLE (TYPE_4__*) ;
 int VC_CONTAINER_CAPS_CAN_SEEK ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_NO_TRACK_AVAILABLE ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 TYPE_5__* malloc (int) ;
 int memset (TYPE_5__*,int ,int) ;
 int mkv_elements_list ;
 scalar_t__ mkv_read_element (TYPE_4__*,int ,int ) ;
 int mkv_reader_close (TYPE_4__*) ;
 int mkv_reader_read ;
 int mkv_reader_seek ;

VC_CONTAINER_STATUS_T mkv_reader_open(VC_CONTAINER_T *p_ctx)
{
   VC_CONTAINER_MODULE_T *module = 0;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_INVALID;
   uint8_t buffer[4];




   if(PEEK_BYTES(p_ctx, buffer, 4) < 4 ||
      buffer[0] != 0x1A || buffer[1] != 0x45 || buffer[2] != 0xDF || buffer[3] != 0xA3)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;






   module = malloc(sizeof(*module));
   if(!module) {status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error;}
   memset(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks = module->tracks;
   module->elements_list = mkv_elements_list;


   status = mkv_read_element(p_ctx, INT64_C(-1), MKV_ELEMENT_ID_UNKNOWN);
   if(status != VC_CONTAINER_SUCCESS) goto error;
   if(!module->is_doctype_valid) {status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED; goto error;}


   do
   {
      status = mkv_read_element(p_ctx, INT64_C(-1), MKV_ELEMENT_ID_UNKNOWN);
      if(status != VC_CONTAINER_SUCCESS) break;

      if(module->cluster_offset) break;
   } while(1);


   if(!p_ctx->tracks_num)
   {
      status = VC_CONTAINER_ERROR_NO_TRACK_AVAILABLE;
      goto error;
   }





   p_ctx->priv->pf_close = mkv_reader_close;
   p_ctx->priv->pf_read = mkv_reader_read;
   p_ctx->priv->pf_seek = mkv_reader_seek;
   p_ctx->duration = module->duration / 1000 * module->timecode_scale;


   if(!STREAM_SEEKABLE(p_ctx))
      return VC_CONTAINER_SUCCESS;

   if(module->cues_offset && (int64_t)module->cues_offset < p_ctx->size)
      p_ctx->capabilities |= VC_CONTAINER_CAPS_CAN_SEEK;

   if(module->tags_offset)
   {
      status = SEEK(p_ctx, module->tags_offset);
      if(status == VC_CONTAINER_SUCCESS)
         status = mkv_read_element(p_ctx, INT64_C(-1) , MKV_ELEMENT_ID_SEGMENT);
   }


   return SEEK(p_ctx, module->state.levels[1].offset);

 error:
   LOG_DEBUG(p_ctx, "mkv: error opening stream (%i)", status);
   if(module) mkv_reader_close(p_ctx);
   return status;
}
