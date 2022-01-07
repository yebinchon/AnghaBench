
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dts; int pts; int flags; int length; int offset; int cmd; } ;
struct TYPE_7__ {int buffer_header_type_specific; TYPE_1__ buffer_header; } ;
typedef TYPE_2__ mmal_worker_buffer_from_host ;
struct TYPE_8__ {int * type; int dts; int pts; int flags; int length; int offset; int cmd; } ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;



__attribute__((used)) static inline void mmal_vc_msg_to_buffer_header(MMAL_BUFFER_HEADER_T *header,
                                                mmal_worker_buffer_from_host *msg)
{
   header->cmd = msg->buffer_header.cmd;
   header->offset = msg->buffer_header.offset;
   header->length = msg->buffer_header.length;
   header->flags = msg->buffer_header.flags;
   header->pts = msg->buffer_header.pts;
   header->dts = msg->buffer_header.dts;
   *header->type = msg->buffer_header_type_specific;
}
