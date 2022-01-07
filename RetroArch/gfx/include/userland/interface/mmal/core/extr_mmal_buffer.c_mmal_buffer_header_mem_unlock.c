
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ payload_handle; } ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;
typedef int MEM_HANDLE_T ;


 int MMAL_PARAM_UNUSED (TYPE_2__*) ;
 int mem_unlock (int ) ;

void mmal_buffer_header_mem_unlock(MMAL_BUFFER_HEADER_T *header)
{




   MMAL_PARAM_UNUSED(header);

}
