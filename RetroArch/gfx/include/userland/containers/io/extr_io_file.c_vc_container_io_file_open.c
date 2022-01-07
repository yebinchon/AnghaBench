
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_6__ {char* uri; unsigned long max_size; int capabilities; TYPE_2__* module; int size; int pf_seek; int pf_write; int pf_read; int pf_close; int uri_parts; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_7__ {int * stream; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;
typedef scalar_t__ VC_CONTAINER_IO_MODE_T ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_ERROR_URI_NOT_FOUND ;
 int VC_CONTAINER_IO_CAPS_NO_CACHING ;
 scalar_t__ VC_CONTAINER_IO_MODE_WRITE ;
 int VC_CONTAINER_PARAM_UNUSED (char const*) ;
 int VC_CONTAINER_SUCCESS ;
 int _IONBF ;
 int fclose (int *) ;
 int * fopen (char const*,char const*) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int io_file_close ;
 int io_file_read ;
 int io_file_seek ;
 int io_file_write ;
 TYPE_2__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int setvbuf (int *,int *,int ,int ) ;
 char* vc_uri_path (int ) ;

VC_CONTAINER_STATUS_T vc_container_io_file_open( VC_CONTAINER_IO_T *p_ctx,
   const char *unused, VC_CONTAINER_IO_MODE_T mode )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_IO_MODULE_T *module = 0;
   const char *psz_mode = mode == VC_CONTAINER_IO_MODE_WRITE ? "wb+" : "rb";
   const char *uri = p_ctx->uri;
   FILE *stream = 0;
   VC_CONTAINER_PARAM_UNUSED(unused);

   if(vc_uri_path(p_ctx->uri_parts))
      uri = vc_uri_path(p_ctx->uri_parts);

   stream = fopen(uri, psz_mode);
   if(!stream) { status = VC_CONTAINER_ERROR_URI_NOT_FOUND; goto error; }


   setvbuf(stream, ((void*)0), _IONBF, 0);

   module = malloc( sizeof(*module) );
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   memset(module, 0, sizeof(*module));

   p_ctx->module = module;
   module->stream = stream;
   p_ctx->pf_close = io_file_close;
   p_ctx->pf_read = io_file_read;
   p_ctx->pf_write = io_file_write;
   p_ctx->pf_seek = io_file_seek;

   if(mode == VC_CONTAINER_IO_MODE_WRITE)
   {
      p_ctx->max_size = (1UL<<31)-1;
   }
   else
   {

      fseek(p_ctx->module->stream, 0, SEEK_END);
      p_ctx->size = ftell(p_ctx->module->stream);
      fseek(p_ctx->module->stream, 0, SEEK_SET);
   }

   p_ctx->capabilities = VC_CONTAINER_IO_CAPS_NO_CACHING;
   return VC_CONTAINER_SUCCESS;

 error:
   if(stream) fclose(stream);
   return status;
}
