
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct VC_CONTAINER_IO_T {int uri_parts; int size; int pf_seek; int pf_read; } ;
struct TYPE_9__ {TYPE_2__* priv; int * drm; int size; } ;
typedef TYPE_1__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
typedef char const* VC_CONTAINER_PROGRESS_REPORT_FUNC_T ;
struct TYPE_10__ {struct VC_CONTAINER_IO_T* io; int drm_filter; int uri; int verbosity; } ;
typedef TYPE_2__ VC_CONTAINER_PRIVATE_T ;
typedef int VC_CONTAINER_DRM_T ;


 int LOG_ERROR (int ,char*,struct VC_CONTAINER_IO_T*) ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_INVALID_ARGUMENT ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_PARAM_UNUSED (char const*) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int VC_FOURCC (unsigned char,char,char,char) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int vc_container_close (TYPE_1__*) ;
 int vc_container_filter_open (int ,int ,TYPE_1__*,scalar_t__*) ;
 scalar_t__ vc_container_load_reader (TYPE_1__*,char const*) ;
 int vc_container_log_get_default_verbosity () ;
 int vc_uri_find_query (int ,int ,char*,char const**) ;
 char* vc_uri_path_extension (int ) ;

VC_CONTAINER_T *vc_container_open_reader_with_io( struct VC_CONTAINER_IO_T *io,
   const char *uri, VC_CONTAINER_STATUS_T *p_status,
   VC_CONTAINER_PROGRESS_REPORT_FUNC_T pfn_progress, void *progress_userdata)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_T *p_ctx = 0;
   const char *extension;

   VC_CONTAINER_PARAM_UNUSED(pfn_progress);
   VC_CONTAINER_PARAM_UNUSED(progress_userdata);
   VC_CONTAINER_PARAM_UNUSED(uri);


   if (!io || !io->pf_read || !io->pf_seek)
   {
      LOG_ERROR(0, "invalid i/o instance: %p", io);
      status = VC_CONTAINER_ERROR_INVALID_ARGUMENT;
      goto error;
   }


   p_ctx = malloc( sizeof(*p_ctx) + sizeof(*p_ctx->priv) + sizeof(*p_ctx->drm));
   if(!p_ctx) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   memset(p_ctx, 0, sizeof(*p_ctx) + sizeof(*p_ctx->priv) + sizeof(*p_ctx->drm));
   p_ctx->priv = (VC_CONTAINER_PRIVATE_T *)(p_ctx + 1);
   p_ctx->priv->verbosity = vc_container_log_get_default_verbosity();
   p_ctx->drm = (VC_CONTAINER_DRM_T *)(p_ctx->priv + 1);
   p_ctx->size = io->size;
   p_ctx->priv->io = io;
   p_ctx->priv->uri = io->uri_parts;


   extension = vc_uri_path_extension(p_ctx->priv->uri);

   vc_uri_find_query(p_ctx->priv->uri, 0, "container", &extension);

   status = vc_container_load_reader(p_ctx, extension);
   if (status != VC_CONTAINER_SUCCESS)
      goto error;

   p_ctx->priv->drm_filter = vc_container_filter_open(VC_FOURCC('d','r','m',' '),
      VC_FOURCC('u','n','k','n'), p_ctx, &status);
   if (status != VC_CONTAINER_SUCCESS)
   {


      if (status != VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED) goto error;


      p_ctx->drm = ((void*)0);
      status = VC_CONTAINER_SUCCESS;
   }

end:
   if(p_status) *p_status = status;
   return p_ctx;

error:
   if (p_ctx)
   {
      p_ctx->priv->io = ((void*)0);
      vc_container_close(p_ctx);
      p_ctx = ((void*)0);
   }
   goto end;
}
