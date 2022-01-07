
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; int id; } ;
struct TYPE_4__ {TYPE_3__ hdr; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_1__ MMAL_DISPLAYREGION_T ;


 int MMAL_PARAMETER_DISPLAYREGION ;
 int mmal_port_parameter_set (int *,TYPE_3__*) ;

MMAL_STATUS_T mmal_util_set_display_region(MMAL_PORT_T *port,
                                           MMAL_DISPLAYREGION_T *region)
{
   region->hdr.id = MMAL_PARAMETER_DISPLAYREGION;
   region->hdr.size = sizeof(*region);
   return mmal_port_parameter_set(port, &region->hdr);
}
