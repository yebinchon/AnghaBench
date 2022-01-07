
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {scalar_t__ driver_area; } ;
typedef int MMAL_DRIVER_BUFFER_T ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;



MMAL_DRIVER_BUFFER_T *mmal_buffer_header_driver_data(MMAL_BUFFER_HEADER_T *header)
{
   return (MMAL_DRIVER_BUFFER_T *)header->priv->driver_area;
}
