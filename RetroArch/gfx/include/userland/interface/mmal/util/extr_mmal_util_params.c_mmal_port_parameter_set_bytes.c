
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {size_t size; int id; } ;
struct TYPE_5__ {TYPE_2__ hdr; int data; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_1__ MMAL_PARAMETER_BYTES_T ;


 int MMAL_ENOMEM ;
 TYPE_1__* calloc (int,size_t) ;
 int free (TYPE_1__*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int mmal_port_parameter_set (int *,TYPE_2__*) ;

MMAL_STATUS_T mmal_port_parameter_set_bytes(MMAL_PORT_T *port, uint32_t id,
   const uint8_t *data, unsigned int size)
{
   MMAL_PARAMETER_BYTES_T *param = 0;
   MMAL_STATUS_T status;
   size_t param_size = sizeof(param->hdr) + size;

   param = calloc(1, param_size);
   if (!param)
      return MMAL_ENOMEM;

   param->hdr.id = id;
   param->hdr.size = param_size;
   memcpy(param->data, data, size);
   status = mmal_port_parameter_set(port, &param->hdr);
   free(param);
   return status;
}
