
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct VC_CONTAINER_IO_MODULE_T {int dummy; } ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_4__ {int size; int pf_seek; int pf_read; int pf_close; struct VC_CONTAINER_IO_MODULE_T* module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
typedef int VC_CONTAINER_IO_CAPABILITIES_T ;
typedef int FILE ;


 int LOG_ERROR (int ,char*,int ) ;
 int SEEK_END ;
 int SEEK_SET ;
 int VC_CONTAINER_ERROR_URI_OPEN_FAILED ;
 int VC_CONTAINER_IO_CAPS_NO_CACHING ;
 int VC_CONTAINER_SUCCESS ;
 int client_io_close ;
 int client_io_read ;
 int client_io_seek ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 TYPE_1__* vc_container_io_create (char const*,int ,int ,int *) ;

__attribute__((used)) static VC_CONTAINER_IO_T *client_io_open( const char *psz_uri, VC_CONTAINER_STATUS_T *status )
{
   VC_CONTAINER_IO_T *p_io;
   VC_CONTAINER_IO_CAPABILITIES_T capabilities = VC_CONTAINER_IO_CAPS_NO_CACHING;
   FILE *fd;

   fd = fopen(psz_uri, "rb");
   if (!fd)
   {
      *status = VC_CONTAINER_ERROR_URI_OPEN_FAILED;
      return ((void*)0);
   }

   p_io = vc_container_io_create( psz_uri, 0, capabilities, status );
   if(!p_io)
   {
     LOG_ERROR(0, "error creating io (%i)", *status);
     fclose(fd);
     return ((void*)0);
   }

   p_io->module = (struct VC_CONTAINER_IO_MODULE_T *)fd;
   p_io->pf_close = client_io_close;
   p_io->pf_read = client_io_read;
   p_io->pf_seek = client_io_seek;


   fseek(fd, 0, SEEK_END);
   p_io->size = ftell(fd);
   fseek(fd, 0, SEEK_SET);

   *status = VC_CONTAINER_SUCCESS;
   return p_io;
}
