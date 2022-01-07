
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_18__ {int cmd; scalar_t__ data; } ;
struct TYPE_11__ {int id; } ;
struct TYPE_17__ {TYPE_1__ hdr; } ;
struct TYPE_15__ {int den; int num; } ;
struct TYPE_14__ {int den; int num; } ;
struct TYPE_13__ {int den; int num; } ;
struct TYPE_12__ {int den; int num; } ;
struct TYPE_16__ {TYPE_5__ awb_blue_gain; TYPE_4__ awb_red_gain; TYPE_3__ digital_gain; TYPE_2__ analog_gain; int exposure; } ;
typedef int MMAL_PORT_T ;
typedef TYPE_6__ MMAL_PARAMETER_CAMERA_SETTINGS_T ;
typedef TYPE_7__ MMAL_EVENT_PARAMETER_CHANGED_T ;
typedef TYPE_8__ MMAL_BUFFER_HEADER_T ;


 scalar_t__ MMAL_EVENT_ERROR ;
 scalar_t__ MMAL_EVENT_PARAMETER_CHANGED ;

 int fprintf (int ,char*,int) ;
 int mmal_buffer_header_release (TYPE_8__*) ;
 int stderr ;
 int vcos_log_error (char*,...) ;

void default_camera_control_callback(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   fprintf(stderr, "Camera control callback  cmd=0x%08x", buffer->cmd);

   if (buffer->cmd == MMAL_EVENT_PARAMETER_CHANGED)
   {
      MMAL_EVENT_PARAMETER_CHANGED_T *param = (MMAL_EVENT_PARAMETER_CHANGED_T *)buffer->data;
      switch (param->hdr.id)
      {
      case 128:
      {
         MMAL_PARAMETER_CAMERA_SETTINGS_T *settings = (MMAL_PARAMETER_CAMERA_SETTINGS_T*)param;
         vcos_log_error("Exposure now %u, analog gain %u/%u, digital gain %u/%u",
                        settings->exposure,
                        settings->analog_gain.num, settings->analog_gain.den,
                        settings->digital_gain.num, settings->digital_gain.den);
         vcos_log_error("AWB R=%u/%u, B=%u/%u",
                        settings->awb_red_gain.num, settings->awb_red_gain.den,
                        settings->awb_blue_gain.num, settings->awb_blue_gain.den);
      }
      break;
      }
   }
   else if (buffer->cmd == MMAL_EVENT_ERROR)
   {
      vcos_log_error("No data received from sensor. Check all connections, including the Sunny one on the camera board");
   }
   else
   {
      vcos_log_error("Received unexpected camera control callback event, 0x%08x", buffer->cmd);
   }

   mmal_buffer_header_release(buffer);
}
