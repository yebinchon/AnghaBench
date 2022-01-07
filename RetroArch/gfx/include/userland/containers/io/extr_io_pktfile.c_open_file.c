
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {int uri_parts; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
typedef scalar_t__ VC_CONTAINER_IO_MODE_T ;
typedef int FILE ;


 int VC_CONTAINER_ERROR_URI_NOT_FOUND ;
 int VC_CONTAINER_ERROR_URI_OPEN_FAILED ;
 scalar_t__ VC_CONTAINER_IO_MODE_WRITE ;
 int VC_CONTAINER_SUCCESS ;
 int * fopen (char const*,char const*) ;
 int recognise_scheme (int ) ;
 char* vc_uri_path (int ) ;
 char* vc_uri_port (int ) ;
 int vc_uri_scheme (int ) ;

__attribute__((used)) static FILE *open_file(VC_CONTAINER_IO_T *ctx, VC_CONTAINER_IO_MODE_T mode,
   VC_CONTAINER_STATUS_T *p_status)
{
   const char *psz_mode = mode == VC_CONTAINER_IO_MODE_WRITE ? "wb+" : "rb";
   FILE *stream = 0;
   const char *port, *path;


   port = vc_uri_port(ctx->uri_parts);
   if (port && !*port)
      port = ((void*)0);

   path = vc_uri_path(ctx->uri_parts);
   if (path && !*path)
      path = ((void*)0);


   if (port || !path) { *p_status = VC_CONTAINER_ERROR_URI_OPEN_FAILED; goto error; }

   if (!recognise_scheme(vc_uri_scheme(ctx->uri_parts)))
   { *p_status = VC_CONTAINER_ERROR_URI_NOT_FOUND; goto error; }

   stream = fopen(path, psz_mode);
   if(!stream) { *p_status = VC_CONTAINER_ERROR_URI_NOT_FOUND; goto error; }

   *p_status = VC_CONTAINER_SUCCESS;
   return stream;

error:
   return ((void*)0);
}
