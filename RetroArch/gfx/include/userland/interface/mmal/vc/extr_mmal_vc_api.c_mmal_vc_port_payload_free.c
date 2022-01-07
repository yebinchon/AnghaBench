
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {scalar_t__ opaque_allocs; } ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {TYPE_3__* module; } ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_PORT_MODULE_T ;
typedef int MMAL_OPAQUE_IMAGE_HANDLE_T ;


 scalar_t__ MMAL_SUCCESS ;
 int mmal_vc_opaque_release (int ) ;
 scalar_t__ mmal_vc_shm_free (int *) ;
 int vcos_free (int *) ;

__attribute__((used)) static void mmal_vc_port_payload_free(MMAL_PORT_T *port, uint8_t *payload)
{
   MMAL_PORT_MODULE_T *module = port->priv->module;

   if (module->opaque_allocs)
   {
      module->opaque_allocs--;
      mmal_vc_opaque_release((MMAL_OPAQUE_IMAGE_HANDLE_T)payload);
      return;
   }

   else if (mmal_vc_shm_free(payload) == MMAL_SUCCESS)
      return;


   vcos_free(payload);
}
