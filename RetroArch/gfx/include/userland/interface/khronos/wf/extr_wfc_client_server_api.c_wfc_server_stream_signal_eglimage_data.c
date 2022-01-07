
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int msg ;
struct TYPE_5__ {int type; } ;
struct TYPE_4__ {int flip; TYPE_2__ header; void* flags; void* format; void* offset; void* stride; void* height; void* width; void* ustorage; int stream; } ;
typedef TYPE_1__ WFC_IPC_MSG_SS_SIGNAL_EGLIMAGE_DATA_T ;
typedef int WFCNativeStreamType ;
typedef scalar_t__ VCOS_STATUS_T ;


 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_IPC_MSG_SS_SIGNAL_EGLIMAGE_DATA ;
 int memset (TYPE_1__*,int ,int) ;
 int vcos_assert (int) ;
 int vcos_log_trace (char*,int ,int ,void*) ;
 scalar_t__ wfc_client_ipc_send (TYPE_2__*,int) ;

void wfc_server_stream_signal_eglimage_data(WFCNativeStreamType stream,
      uint32_t ustorage, uint32_t width, uint32_t height, uint32_t stride,
      uint32_t offset, uint32_t format, uint32_t flags, bool flip)
{
   WFC_IPC_MSG_SS_SIGNAL_EGLIMAGE_DATA_T msg;
   VCOS_STATUS_T status;

   memset(&msg, 0, sizeof msg);
   msg.header.type = WFC_IPC_MSG_SS_SIGNAL_EGLIMAGE_DATA;
   msg.stream = stream;
   msg.ustorage = ustorage;
   msg.width = width;
   msg.height = height;
   msg.stride = stride;
   msg.offset = offset;
   msg.format = format;
   msg.flags = flags;
   msg.flip = flip;

   vcos_log_trace("%s: stream 0x%x image storage 0x%x",
         VCOS_FUNCTION, stream, ustorage);

   status = wfc_client_ipc_send(&msg.header, sizeof(msg));

   vcos_assert(status == VCOS_SUCCESS);
}
