
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * type; int dts; int pts; int flags; int length; int offset; int cmd; } ;
typedef TYPE_1__ MMAL_BUFFER_HEADER_T ;



void mmal_buffer_header_copy_header(MMAL_BUFFER_HEADER_T *dest, const MMAL_BUFFER_HEADER_T *src)
{
   dest->cmd = src->cmd;
   dest->offset = src->offset;
   dest->length = src->length;
   dest->flags = src->flags;
   dest->pts = src->pts;
   dest->dts = src->dts;
   *dest->type = *src->type;
}
