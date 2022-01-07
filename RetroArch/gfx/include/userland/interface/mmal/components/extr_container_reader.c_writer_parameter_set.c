
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


typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_14__ {int uri; int container; } ;
struct TYPE_13__ {TYPE_1__* priv; } ;
struct TYPE_12__ {int id; } ;
struct TYPE_11__ {int uri; } ;
struct TYPE_10__ {TYPE_5__* component; } ;
struct TYPE_9__ {TYPE_6__* module; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_PARAMETER_URI_T ;
typedef TYPE_4__ MMAL_PARAMETER_HEADER_T ;
typedef TYPE_5__ MMAL_COMPONENT_T ;
typedef TYPE_6__ MMAL_COMPONENT_MODULE_T ;


 int LOG_ERROR (char*,int ,int ) ;
 int MMAL_EINVAL ;
 int MMAL_ENOSYS ;

 int MMAL_SUCCESS ;
 int container_map_to_mmal_status (int ) ;
 int memset (int ,int ,int) ;
 int strncpy (int ,int ,int) ;
 int vc_container_open_writer (int ,int *,int ,int ) ;

__attribute__((used)) static MMAL_STATUS_T writer_parameter_set(MMAL_PORT_T *port, const MMAL_PARAMETER_HEADER_T *param)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   VC_CONTAINER_STATUS_T cstatus;

   switch(param->id)
   {
   case 128:
      if(module->container)
         return MMAL_EINVAL;

      memset(module->uri, 0, sizeof(module->uri));
      strncpy(module->uri, ((const MMAL_PARAMETER_URI_T *)param)->uri, sizeof(module->uri)-1 );


      module->container = vc_container_open_writer(module->uri, &cstatus, 0, 0);
      if(!module->container)
      {
         LOG_ERROR("error opening file %s (%i)", module->uri, cstatus);
         return container_map_to_mmal_status(cstatus);
      }
      return MMAL_SUCCESS;

   default:
      return MMAL_ENOSYS;
   }

   return MMAL_SUCCESS;
}
