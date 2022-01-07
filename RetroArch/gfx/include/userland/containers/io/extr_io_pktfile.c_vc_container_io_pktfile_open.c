
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_7__ {int capabilities; int pf_write; int pf_read; int pf_close; TYPE_2__* module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_8__ {int is_native_order; int * stream; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;
typedef scalar_t__ VC_CONTAINER_IO_MODE_T ;
typedef int FILE ;


 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_IO_CAPS_CANT_SEEK ;
 scalar_t__ VC_CONTAINER_IO_MODE_WRITE ;
 int VC_CONTAINER_PARAM_UNUSED (char const*) ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int fclose (int *) ;
 int io_pktfile_close ;
 int io_pktfile_read ;
 int io_pktfile_write ;
 TYPE_2__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int * open_file (TYPE_1__*,scalar_t__,scalar_t__*) ;
 scalar_t__ read_byte_order (int *,int*) ;
 scalar_t__ write_byte_order (int *) ;

VC_CONTAINER_STATUS_T vc_container_io_pktfile_open( VC_CONTAINER_IO_T *p_ctx,
   const char *unused, VC_CONTAINER_IO_MODE_T mode )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_IO_MODULE_T *module = 0;
   FILE *stream = 0;
   bool is_native_order = 1;
   VC_CONTAINER_PARAM_UNUSED(unused);

   stream = open_file(p_ctx, mode, &status);
   if (status != VC_CONTAINER_SUCCESS) goto error;

   if (mode == VC_CONTAINER_IO_MODE_WRITE)
      status = write_byte_order(stream);
   else
      status = read_byte_order(stream, &is_native_order);
   if (status != VC_CONTAINER_SUCCESS) goto error;

   module = malloc( sizeof(*module) );
   if(!module) { status = VC_CONTAINER_ERROR_OUT_OF_MEMORY; goto error; }
   memset(module, 0, sizeof(*module));

   p_ctx->module = module;
   module->stream = stream;
   module->is_native_order = is_native_order;
   p_ctx->pf_close = io_pktfile_close;
   p_ctx->pf_read = io_pktfile_read;
   p_ctx->pf_write = io_pktfile_write;


   p_ctx->capabilities = VC_CONTAINER_IO_CAPS_CANT_SEEK;
   return VC_CONTAINER_SUCCESS;

error:
   if(stream) fclose(stream);
   return status;
}
