
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int refcount; int * io; } ;
typedef TYPE_2__ VC_CONTAINER_WRITER_EXTRAIO_T ;
struct TYPE_8__ {TYPE_1__* priv; } ;
typedef TYPE_3__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_IO_T ;
struct TYPE_6__ {int * io; } ;


 int INT64_C (int ) ;
 int vc_container_io_seek (int *,int ) ;

int64_t vc_container_writer_extraio_enable(VC_CONTAINER_T *context, VC_CONTAINER_WRITER_EXTRAIO_T *extraio)
{
   VC_CONTAINER_IO_T *tmp;

   if(!extraio->refcount)
   {
      vc_container_io_seek(extraio->io, INT64_C(0));
      tmp = context->priv->io;
      context->priv->io = extraio->io;
      extraio->io = tmp;
   }
   return extraio->refcount++;
}
