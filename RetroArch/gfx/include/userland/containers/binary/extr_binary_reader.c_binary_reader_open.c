
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_16__ {int tracks_num; TYPE_2__* priv; TYPE_5__** tracks; } ;
typedef TYPE_3__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_17__ {int init; int default_block_size; int block_size; TYPE_5__* track; } ;
typedef TYPE_4__ VC_CONTAINER_MODULE_T ;
typedef scalar_t__ VC_CONTAINER_FOURCC_T ;
typedef int VC_CONTAINER_ES_TYPE_T ;
struct TYPE_19__ {scalar_t__ codec; scalar_t__ ext; int type; } ;
struct TYPE_18__ {int is_enabled; TYPE_1__* format; } ;
struct TYPE_15__ {int pf_seek; int pf_read; int pf_close; TYPE_4__* module; int uri; } ;
struct TYPE_14__ {scalar_t__ codec; int es_type; } ;
struct TYPE_13__ {scalar_t__ codec; int type; scalar_t__ ext; } ;


 int DEFAULT_BLOCK_SIZE ;
 int DEFAULT_JPEG_BLOCK_SIZE ;
 int LOG_DEBUG (TYPE_3__*,char*,int ) ;
 scalar_t__ VC_CONTAINER_CODEC_JPEG ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SUCCESS ;
 TYPE_11__* bin_extension_to_format_table ;
 int binary_reader_close ;
 int binary_reader_read ;
 int binary_reader_seek ;
 TYPE_9__* extension_to_format_table ;
 TYPE_4__* malloc (int) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ strcasecmp (char const*,scalar_t__) ;
 int strstr (char const*,scalar_t__) ;
 TYPE_5__* vc_container_allocate_track (TYPE_3__*,int ) ;
 int vc_uri_find_query (int ,int ,char*,char const**) ;
 char const* vc_uri_path (int ) ;
 char* vc_uri_path_extension (int ) ;

VC_CONTAINER_STATUS_T binary_reader_open( VC_CONTAINER_T *p_ctx )
{
   const char *extension = vc_uri_path_extension(p_ctx->priv->uri);
   VC_CONTAINER_MODULE_T *module = 0;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_INVALID;
   VC_CONTAINER_ES_TYPE_T es_type = 0;
   VC_CONTAINER_FOURCC_T codec = 0;
   unsigned int i;


   vc_uri_find_query(p_ctx->priv->uri, 0, "container", &extension);


   if(!extension || !vc_uri_path(p_ctx->priv->uri))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   for(i = 0; extension_to_format_table[i].ext; i++)
   {
      if(strcasecmp(extension, extension_to_format_table[i].ext))
         continue;

      es_type = extension_to_format_table[i].type;
      codec = extension_to_format_table[i].codec;
      break;
   }
   if(!extension_to_format_table[i].ext) return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;


   for(i = 0; !codec && bin_extension_to_format_table[i].ext; i++)
   {
      if(!strstr(vc_uri_path(p_ctx->priv->uri), bin_extension_to_format_table[i].ext) &&
         !strstr(extension, bin_extension_to_format_table[i].ext))
         continue;

      es_type = bin_extension_to_format_table[i].type;
      codec = bin_extension_to_format_table[i].codec;
      break;
   }
   if(!codec) return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;


   module = malloc(sizeof(*module));
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   memset(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks_num = 1;
   p_ctx->tracks = &module->track;
   p_ctx->tracks[0] = vc_container_allocate_track(p_ctx, 0);
   if(!p_ctx->tracks[0]) return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   p_ctx->tracks[0]->format->es_type = es_type;
   p_ctx->tracks[0]->format->codec = codec;
   p_ctx->tracks[0]->is_enabled = 1;
   module->default_block_size = DEFAULT_BLOCK_SIZE;
   if(codec == VC_CONTAINER_CODEC_JPEG)
      module->default_block_size = DEFAULT_JPEG_BLOCK_SIZE;
   module->block_size = module->default_block_size;
   module->init = 1;





   p_ctx->priv->pf_close = binary_reader_close;
   p_ctx->priv->pf_read = binary_reader_read;
   p_ctx->priv->pf_seek = binary_reader_seek;
   return VC_CONTAINER_SUCCESS;

 error:
   LOG_DEBUG(p_ctx, "binary: error opening stream (%i)", status);
   return status;
}
