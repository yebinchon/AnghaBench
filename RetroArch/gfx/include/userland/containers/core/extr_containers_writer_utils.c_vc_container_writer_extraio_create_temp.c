
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int temp; int io; } ;
typedef TYPE_3__ VC_CONTAINER_WRITER_EXTRAIO_T ;
struct TYPE_12__ {TYPE_2__* priv; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {int tmp_io; TYPE_1__* io; } ;
struct TYPE_9__ {char* uri; } ;


 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int free (char*) ;
 char* malloc (unsigned int) ;
 int snprintf (char*,unsigned int,char*,char*) ;
 int strlen (char*) ;
 scalar_t__ vc_container_writer_extraio_create (TYPE_4__*,char*,TYPE_3__*) ;

VC_CONTAINER_STATUS_T vc_container_writer_extraio_create_temp(VC_CONTAINER_T *context, VC_CONTAINER_WRITER_EXTRAIO_T *extraio)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   unsigned int length = strlen(context->priv->io->uri) + 5;
   char *uri = malloc(length);
   if(!uri) return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

   snprintf(uri, length, "%s.tmp", context->priv->io->uri);
   status = vc_container_writer_extraio_create(context, uri, extraio);
   free(uri);
   extraio->temp = 1;

   if(status == VC_CONTAINER_SUCCESS && !context->priv->tmp_io)
      context->priv->tmp_io = extraio->io;

   return status;
}
