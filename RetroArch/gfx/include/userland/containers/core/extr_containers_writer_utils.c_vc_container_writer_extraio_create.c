
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ temp; scalar_t__ refcount; int io; } ;
typedef TYPE_1__ VC_CONTAINER_WRITER_EXTRAIO_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int VC_CONTAINER_IO_MODE_WRITE ;
 int VC_CONTAINER_PARAM_UNUSED (int *) ;
 int VC_CONTAINER_SUCCESS ;
 int vc_container_io_open (char const*,int ,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T vc_container_writer_extraio_create(VC_CONTAINER_T *context, const char *uri,
   VC_CONTAINER_WRITER_EXTRAIO_T *extraio)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_PARAM_UNUSED(context);

   extraio->io = vc_container_io_open( uri, VC_CONTAINER_IO_MODE_WRITE, &status );
   extraio->refcount = 0;
   extraio->temp = 0;
   return status;
}
