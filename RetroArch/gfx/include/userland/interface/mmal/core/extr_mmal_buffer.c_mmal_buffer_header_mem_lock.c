
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int * data; TYPE_1__* priv; } ;
struct TYPE_5__ {void* payload_handle; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;
typedef int MEM_HANDLE_T ;


 int MMAL_EINVAL ;
 int MMAL_PARAM_UNUSED (TYPE_2__*) ;
 int MMAL_SUCCESS ;
 int * mem_lock (int ) ;

MMAL_STATUS_T mmal_buffer_header_mem_lock(MMAL_BUFFER_HEADER_T *header)
{







   MMAL_PARAM_UNUSED(header);


   return MMAL_SUCCESS;
}
