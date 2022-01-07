
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_PROGRESS_REPORT_FUNC_T ;
typedef int VC_CONTAINER_IO_T ;


 int VC_CONTAINER_IO_MODE_READ ;
 int vc_container_io_close (int *) ;
 int * vc_container_io_open (char const*,int ,int *) ;
 int * vc_container_open_reader_with_io (int *,char const*,int *,int ,void*) ;

VC_CONTAINER_T *vc_container_open_reader( const char *uri, VC_CONTAINER_STATUS_T *p_status,
   VC_CONTAINER_PROGRESS_REPORT_FUNC_T pfn_progress, void *progress_userdata)
{
   VC_CONTAINER_IO_T *io;
   VC_CONTAINER_T *ctx;


   io = vc_container_io_open( uri, VC_CONTAINER_IO_MODE_READ, p_status );
   if (!io)
      return 0;

   ctx = vc_container_open_reader_with_io( io, uri, p_status, pfn_progress, progress_userdata);
   if (!ctx)
      vc_container_io_close(io);
   return ctx;
}
