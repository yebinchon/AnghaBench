
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int display_region; } ;
struct TYPE_13__ {TYPE_1__* priv; } ;
struct TYPE_12__ {int set; int dest_rect; } ;
struct TYPE_11__ {int id; } ;
struct TYPE_10__ {TYPE_5__* component; } ;
struct TYPE_9__ {TYPE_6__* module; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_PARAMETER_HEADER_T ;
typedef TYPE_4__ MMAL_DISPLAYREGION_T ;
typedef TYPE_5__ MMAL_COMPONENT_T ;
typedef TYPE_6__ MMAL_COMPONENT_MODULE_T ;


 int MMAL_DISPLAY_SET_DEST_RECT ;
 int MMAL_ENOSYS ;

 int MMAL_SUCCESS ;

__attribute__((used)) static MMAL_STATUS_T sdl_port_parameter_set(MMAL_PORT_T *port, const MMAL_PARAMETER_HEADER_T *param)
{
   MMAL_STATUS_T status = MMAL_ENOSYS;
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;

   switch (param->id)
   {
   case 128:
      {

         const MMAL_DISPLAYREGION_T *display = (const MMAL_DISPLAYREGION_T *)param;
         if (display->set & MMAL_DISPLAY_SET_DEST_RECT)
            module->display_region = display->dest_rect;
         status = MMAL_SUCCESS;
      }
      break;
   default:
      break;
   }
   return status;
}
