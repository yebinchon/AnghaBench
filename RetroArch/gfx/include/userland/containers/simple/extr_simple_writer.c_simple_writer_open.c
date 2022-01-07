
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; int tracks; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {int tracks; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_8__ {int pf_control; int pf_write; int pf_close; TYPE_3__* module; int uri; } ;


 int LOG_DEBUG (TYPE_2__*,char*,...) ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SUCCESS ;
 TYPE_3__* malloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int simple_writer_close ;
 int simple_writer_control ;
 int simple_writer_write ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int vc_uri_find_query (int ,int ,char*,char const**) ;
 char* vc_uri_path_extension (int ) ;

VC_CONTAINER_STATUS_T simple_writer_open( VC_CONTAINER_T *ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_INVALID;
   const char *extension = vc_uri_path_extension(ctx->priv->uri);
   VC_CONTAINER_MODULE_T *module;


   vc_uri_find_query(ctx->priv->uri, 0, "container", &extension);


   if(!extension)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if(strcasecmp(extension, "smpl") && strcasecmp(extension, "simple"))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   LOG_DEBUG(ctx, "using simple writer");


   module = malloc(sizeof(*module));
   if (!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   memset(module, 0, sizeof(*module));
   ctx->priv->module = module;
   ctx->tracks = module->tracks;

   ctx->priv->pf_close = simple_writer_close;
   ctx->priv->pf_write = simple_writer_write;
   ctx->priv->pf_control = simple_writer_control;
   return VC_CONTAINER_SUCCESS;

 error:
   LOG_DEBUG(ctx, "simple: error opening stream (%i)", status);
   return status;
}
