
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ cmd; scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ userdata; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;
typedef int AVCodecContext ;


 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 scalar_t__ MMAL_EVENT_ERROR ;
 int av_fourcc2str (scalar_t__) ;
 int av_log (int *,int ,char*,int) ;
 int mmal_buffer_header_release (TYPE_2__*) ;

__attribute__((used)) static void control_port_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
    AVCodecContext *avctx = (AVCodecContext*)port->userdata;
    MMAL_STATUS_T status;

    if (buffer->cmd == MMAL_EVENT_ERROR) {
        status = *(uint32_t *)buffer->data;
        av_log(avctx, AV_LOG_ERROR, "MMAL error %d on control port\n", (int)status);
    } else {
        av_log(avctx, AV_LOG_WARNING, "Unknown MMAL event %s on control port\n",
               av_fourcc2str(buffer->cmd));
    }

    mmal_buffer_header_release(buffer);
}
