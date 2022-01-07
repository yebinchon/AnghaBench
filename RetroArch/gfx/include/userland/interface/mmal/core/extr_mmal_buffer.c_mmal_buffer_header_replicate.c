
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * type; int dts; int pts; int flags; int length; int offset; int data; int alloc_size; int cmd; TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_2__* reference; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 int LOG_TRACE (char*,TYPE_2__*,TYPE_2__*) ;
 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 int mmal_buffer_header_acquire (TYPE_2__*) ;

MMAL_STATUS_T mmal_buffer_header_replicate(MMAL_BUFFER_HEADER_T *dest,
   MMAL_BUFFER_HEADER_T *src)
{




   if (!dest || !src || dest->priv->reference)
      return MMAL_EINVAL;

   mmal_buffer_header_acquire(src);
   dest->priv->reference = src;


   dest->cmd = src->cmd;
   dest->alloc_size = src->alloc_size;
   dest->data = src->data;
   dest->offset = src->offset;
   dest->length = src->length;
   dest->flags = src->flags;
   dest->pts = src->pts;
   dest->dts = src->dts;
   *dest->type = *src->type;
   return MMAL_SUCCESS;
}
