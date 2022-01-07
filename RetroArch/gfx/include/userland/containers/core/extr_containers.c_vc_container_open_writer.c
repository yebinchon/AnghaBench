
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* priv; } ;
typedef TYPE_1__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
typedef void* VC_CONTAINER_PROGRESS_REPORT_FUNC_T ;
struct TYPE_13__ {int uri; TYPE_3__* io; int verbosity; } ;
typedef TYPE_2__ VC_CONTAINER_PRIVATE_T ;
struct TYPE_14__ {scalar_t__ max_size; int uri_parts; } ;
typedef TYPE_3__ VC_CONTAINER_IO_T ;


 int LOG_DEBUG (TYPE_1__*,char*) ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_RESOURCES ;
 int VC_CONTAINER_IO_MODE_WRITE ;
 int VC_CONTAINER_PARAM_UNUSED (void*) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ WRITER_SPACE_SAFETY_MARGIN ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int vc_container_close (TYPE_1__*) ;
 int vc_container_io_close (TYPE_3__*) ;
 TYPE_3__* vc_container_io_open (char const*,int ,scalar_t__*) ;
 scalar_t__ vc_container_load_writer (TYPE_1__*,char const*) ;
 int vc_container_log_get_default_verbosity () ;
 int vc_uri_find_query (int ,int ,char*,char const**) ;
 char* vc_uri_path_extension (int ) ;

VC_CONTAINER_T *vc_container_open_writer( const char *uri, VC_CONTAINER_STATUS_T *p_status,
   VC_CONTAINER_PROGRESS_REPORT_FUNC_T pfn_progress, void *progress_userdata)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_T *p_ctx = 0;
   VC_CONTAINER_IO_T *io;
   const char *extension;
   VC_CONTAINER_PARAM_UNUSED(pfn_progress);
   VC_CONTAINER_PARAM_UNUSED(progress_userdata);


   io = vc_container_io_open( uri, VC_CONTAINER_IO_MODE_WRITE, &status );
   if(!io) goto error;


   if(io->max_size && io->max_size < WRITER_SPACE_SAFETY_MARGIN)
   {
      LOG_DEBUG(p_ctx, "not enough space available to open a writer");
      status = VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
      goto error;
   }


   p_ctx = malloc( sizeof(*p_ctx) + sizeof(*p_ctx->priv));
   if(!p_ctx) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   memset(p_ctx, 0, sizeof(*p_ctx) + sizeof(*p_ctx->priv));
   p_ctx->priv = (VC_CONTAINER_PRIVATE_T *)(p_ctx + 1);
   p_ctx->priv->verbosity = vc_container_log_get_default_verbosity();
   p_ctx->priv->io = io;
   p_ctx->priv->uri = io->uri_parts;
   io = ((void*)0);


   extension = vc_uri_path_extension(p_ctx->priv->uri);

   vc_uri_find_query(p_ctx->priv->uri, 0, "container", &extension);

   status = vc_container_load_writer(p_ctx, extension);
   if(status != VC_CONTAINER_SUCCESS) goto error;

 end:
   if(p_status) *p_status = status;
   return p_ctx;

error:
   if(io) vc_container_io_close(io);
   if (p_ctx) vc_container_close(p_ctx);
   p_ctx = ((void*)0);
   goto end;
}
