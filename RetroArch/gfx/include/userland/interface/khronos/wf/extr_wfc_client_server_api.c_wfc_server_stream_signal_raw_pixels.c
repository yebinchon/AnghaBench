
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int msg ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {TYPE_2__ header; void* vpitch; void* pitch; void* height; void* width; void* format; void* handle; int stream; } ;
typedef TYPE_1__ WFC_IPC_MSG_SS_SIGNAL_RAW_PIXELS_T ;
typedef int WFCNativeStreamType ;
typedef scalar_t__ VCOS_STATUS_T ;


 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_IPC_MSG_SS_SIGNAL_RAW_PIXELS ;
 int vcos_assert (int) ;
 int vcos_log_trace (char*,int ,int ,void*,void*,void*,void*,void*,void*) ;
 scalar_t__ wfc_client_ipc_send (TYPE_2__*,int) ;

void wfc_server_stream_signal_raw_pixels(WFCNativeStreamType stream,
      uint32_t handle, uint32_t format, uint32_t width, uint32_t height,
      uint32_t pitch, uint32_t vpitch)
{
   WFC_IPC_MSG_SS_SIGNAL_RAW_PIXELS_T msg;
   VCOS_STATUS_T status;

   vcos_log_trace("%s: stream 0x%x image 0x%x format 0x%x width %u height %u"
         " pitch %u vpitch %u",
         VCOS_FUNCTION, stream, handle, format, width, height, pitch, vpitch);

   msg.header.type = WFC_IPC_MSG_SS_SIGNAL_RAW_PIXELS;
   msg.stream = stream;
   msg.handle = handle;
   msg.format = format;
   msg.width = width;
   msg.height = height;
   msg.pitch = pitch;
   msg.vpitch = vpitch;

   status = wfc_client_ipc_send(&msg.header, sizeof(msg));
   vcos_assert(status == VCOS_SUCCESS);
}
