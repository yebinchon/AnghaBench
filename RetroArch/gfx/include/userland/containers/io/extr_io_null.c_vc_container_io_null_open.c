
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {int pf_seek; int pf_write; int pf_read; int pf_close; int uri_parts; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
typedef char const* VC_CONTAINER_IO_MODE_T ;


 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_PARAM_UNUSED (char const*) ;
 int VC_CONTAINER_SUCCESS ;
 int io_null_close ;
 int io_null_read ;
 int io_null_seek ;
 int io_null_write ;
 scalar_t__ strcasecmp (int ,char*) ;
 int vc_uri_scheme (int ) ;

VC_CONTAINER_STATUS_T vc_container_io_null_open( VC_CONTAINER_IO_T *p_ctx,
   const char *unused, VC_CONTAINER_IO_MODE_T mode )
{
   VC_CONTAINER_PARAM_UNUSED(unused);
   VC_CONTAINER_PARAM_UNUSED(mode);


   if (!vc_uri_scheme(p_ctx->uri_parts) ||
       (strcasecmp(vc_uri_scheme(p_ctx->uri_parts), "null") &&
        strcasecmp(vc_uri_scheme(p_ctx->uri_parts), "null")))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   p_ctx->pf_close = io_null_close;
   p_ctx->pf_read = io_null_read;
   p_ctx->pf_write = io_null_write;
   p_ctx->pf_seek = io_null_seek;
   return VC_CONTAINER_SUCCESS;
}
