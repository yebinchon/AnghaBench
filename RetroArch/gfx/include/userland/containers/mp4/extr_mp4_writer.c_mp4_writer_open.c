
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {TYPE_1__* priv; int tracks; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_21__ {scalar_t__ io; } ;
struct TYPE_20__ {TYPE_5__ null; void* data_offset; void* mdat_offset; int temp; int brand; int tracks; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_18__ {int pf_control; int pf_write; int pf_close; TYPE_3__* module; int uri; } ;
typedef int MP4_BRAND_T ;


 int LOG_DEBUG (TYPE_2__*,char*) ;
 int MP4_BOX_TYPE_FTYP ;
 int MP4_BRAND_3GP5 ;
 int MP4_BRAND_ISOM ;
 int MP4_BRAND_QT ;
 int MP4_BRAND_SKM2 ;
 void* STREAM_POSITION (TYPE_2__*) ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int VC_FOURCC (char,char,char,char) ;
 int WRITE_FOURCC (TYPE_2__*,int ,char*) ;
 int WRITE_U32 (TYPE_2__*,int ,char*) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ mp4_write_box (TYPE_2__*,int ) ;
 int mp4_writer_close ;
 int mp4_writer_control ;
 int mp4_writer_write ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ vc_container_writer_extraio_create_null (TYPE_2__*,TYPE_5__*) ;
 scalar_t__ vc_container_writer_extraio_create_temp (TYPE_2__*,int *) ;
 int vc_container_writer_extraio_delete (TYPE_2__*,TYPE_5__*) ;
 int vc_uri_find_query (int ,int ,char*,char const**) ;
 char* vc_uri_path_extension (int ) ;

VC_CONTAINER_STATUS_T mp4_writer_open( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   const char *extension = vc_uri_path_extension(p_ctx->priv->uri);
   VC_CONTAINER_MODULE_T *module = 0;
   MP4_BRAND_T brand;


   vc_uri_find_query(p_ctx->priv->uri, 0, "container", &extension);


   if(!extension)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if(strcasecmp(extension, "3gp") && strcasecmp(extension, "skm") &&
      strcasecmp(extension, "mov") && strcasecmp(extension, "mp4") &&
      strcasecmp(extension, "m4v") && strcasecmp(extension, "m4a"))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;


   module = malloc(sizeof(*module));
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   memset(module, 0, sizeof(*module));
   p_ctx->priv->module = module;
   p_ctx->tracks = module->tracks;


   if(!strcasecmp(extension, "3gp")) brand = MP4_BRAND_3GP5;
   else if(!strcasecmp(extension, "skm")) brand = MP4_BRAND_SKM2;
   else if(!strcasecmp(extension, "mov")) brand = MP4_BRAND_QT;
   else brand = MP4_BRAND_ISOM;
   module->brand = brand;


   status = vc_container_writer_extraio_create_null(p_ctx, &module->null);
   if(status != VC_CONTAINER_SUCCESS) goto error;


   status = vc_container_writer_extraio_create_temp(p_ctx, &module->temp);
   if(status != VC_CONTAINER_SUCCESS) goto error;

   status = mp4_write_box(p_ctx, MP4_BOX_TYPE_FTYP);
   if(status != VC_CONTAINER_SUCCESS) goto error;


   module->mdat_offset = STREAM_POSITION(p_ctx);
   WRITE_U32(p_ctx, 0, "size");
   WRITE_FOURCC(p_ctx, VC_FOURCC('m','d','a','t'), "type");
   module->data_offset = STREAM_POSITION(p_ctx);

   p_ctx->priv->pf_close = mp4_writer_close;
   p_ctx->priv->pf_write = mp4_writer_write;
   p_ctx->priv->pf_control = mp4_writer_control;
   return VC_CONTAINER_SUCCESS;

 error:
   LOG_DEBUG(p_ctx, "mp4: error opening stream");
   if(module)
   {
      if(module->null.io) vc_container_writer_extraio_delete(p_ctx, &module->null);
      free(module);
   }
   return status;
}
