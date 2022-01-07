
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* dts; void* pts; scalar_t__ flags; scalar_t__ offset; scalar_t__ length; } ;
typedef TYPE_1__ MMAL_BUFFER_HEADER_T ;


 void* MMAL_TIME_UNKNOWN ;

void mmal_buffer_header_reset(MMAL_BUFFER_HEADER_T *header)
{
   header->length = 0;
   header->offset = 0;
   header->flags = 0;
   header->pts = MMAL_TIME_UNKNOWN;
   header->dts = MMAL_TIME_UNKNOWN;
}
