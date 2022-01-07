
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int msg ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {TYPE_2__ header; int image_handle; int stream; } ;
typedef TYPE_1__ WFC_IPC_MSG_SS_SIGNAL_MM_IMAGE_DATA_T ;
typedef int WFCNativeStreamType ;
typedef scalar_t__ VCOS_STATUS_T ;


 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_IPC_MSG_SS_SIGNAL_MM_IMAGE_DATA ;
 int vcos_assert (int) ;
 int vcos_log_trace (char*,int ,int ,int ) ;
 scalar_t__ wfc_client_ipc_send (TYPE_2__*,int) ;

void wfc_server_stream_signal_mm_image_data(WFCNativeStreamType stream, uint32_t image_handle)
{
   WFC_IPC_MSG_SS_SIGNAL_MM_IMAGE_DATA_T msg;
   VCOS_STATUS_T status;

   vcos_log_trace("%s: stream 0x%x image 0x%x", VCOS_FUNCTION, stream, image_handle);

   msg.header.type = WFC_IPC_MSG_SS_SIGNAL_MM_IMAGE_DATA;
   msg.stream = stream;
   msg.image_handle = image_handle;

   status = wfc_client_ipc_send(&msg.header, sizeof(msg));

   vcos_assert(status == VCOS_SUCCESS);
}
