
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int length; } ;
typedef TYPE_1__ MMAL_QUEUE_T ;



unsigned int mmal_queue_length(MMAL_QUEUE_T *queue)
{
 if(!queue) return 0;

 return queue->length;
}
