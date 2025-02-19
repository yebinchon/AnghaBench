
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_14__ {scalar_t__ encodings_num; TYPE_3__* encodings; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_15__ {TYPE_4__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_16__ {TYPE_2__* parsing; } ;
typedef TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_13__ {TYPE_7__* module; } ;
struct TYPE_12__ {int type; } ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {TYPE_5__* module; } ;
typedef int MKV_ELEMENT_ID_T ;


 int MKV_CONTENT_ENCODING_COMPRESSION_ZLIB ;
 int MKV_CONTENT_ENCODING_ENCRYPTION ;
 int MKV_CONTENT_ENCODING_UNKNOWN ;

 scalar_t__ MKV_MAX_ENCODINGS ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_RESOURCES ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ mkv_read_element_data_uint (TYPE_6__*,int ,int*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mkv_read_subelements_encoding( VC_CONTAINER_T *p_ctx, MKV_ELEMENT_ID_T id, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_MODULE_T *track_module = module->parsing->priv->module;
   VC_CONTAINER_STATUS_T status;
   uint64_t value;


   status = mkv_read_element_data_uint(p_ctx, size, &value);
   if(status != VC_CONTAINER_SUCCESS) return status;

   if(track_module->encodings_num >= MKV_MAX_ENCODINGS) return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;

   switch(id)
   {
   case 128:
      if(value == 0) track_module->encodings[track_module->encodings_num].type = MKV_CONTENT_ENCODING_COMPRESSION_ZLIB;
      if(value == 1) track_module->encodings[track_module->encodings_num].type = MKV_CONTENT_ENCODING_ENCRYPTION;
      else track_module->encodings[track_module->encodings_num].type = MKV_CONTENT_ENCODING_UNKNOWN;
      break;
   default: break;
   }

   return status;
}
