
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int header_size; } ;
struct TYPE_4__ {int headers_num; scalar_t__ header; } ;
typedef TYPE_1__ MMAL_POOL_T ;
typedef TYPE_2__ MMAL_POOL_PRIVATE_T ;
typedef int MMAL_BUFFER_HEADER_T ;
typedef int MMAL_BH_PRE_RELEASE_CB_T ;


 int ALIGN ;
 int ROUND_UP (int,int ) ;
 int mmal_buffer_header_pre_release_cb_set (int *,int ,void*) ;

void mmal_pool_pre_release_callback_set(MMAL_POOL_T *pool, MMAL_BH_PRE_RELEASE_CB_T cb, void *userdata)
{
   unsigned int i;
   MMAL_POOL_PRIVATE_T *private = (MMAL_POOL_PRIVATE_T *)pool;
   MMAL_BUFFER_HEADER_T *header =
         (MMAL_BUFFER_HEADER_T*)((uint8_t*)pool->header + ROUND_UP(sizeof(void*)*pool->headers_num,ALIGN));

   for (i = 0; i < pool->headers_num; ++i)
   {
      mmal_buffer_header_pre_release_cb_set(header, cb, userdata);
      header = (MMAL_BUFFER_HEADER_T *)((uint8_t*)header + private->header_size);
   }
}
