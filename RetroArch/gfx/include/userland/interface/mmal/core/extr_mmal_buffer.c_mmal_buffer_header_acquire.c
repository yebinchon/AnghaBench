
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {scalar_t__ refcount; } ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 int LOG_TRACE (char*,TYPE_2__*,int) ;

void mmal_buffer_header_acquire(MMAL_BUFFER_HEADER_T *header)
{



   header->priv->refcount++;
}
