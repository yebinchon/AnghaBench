
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* callback ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int queue; } ;
struct TYPE_5__ {TYPE_3__ wrapper; int sema; } ;
typedef TYPE_1__ MMAL_WRAPPER_PRIVATE_T ;
typedef TYPE_2__ MMAL_POOL_T ;
typedef int MMAL_BUFFER_HEADER_T ;
typedef int MMAL_BOOL_T ;


 int mmal_queue_put (int ,int *) ;
 int stub1 (TYPE_3__*) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static MMAL_BOOL_T mmal_wrapper_bh_release_cb(MMAL_POOL_T *pool, MMAL_BUFFER_HEADER_T *buffer,
   void *userdata)
{
   MMAL_WRAPPER_PRIVATE_T *private = (MMAL_WRAPPER_PRIVATE_T *)userdata;

   mmal_queue_put(pool->queue, buffer);
   vcos_semaphore_post(&private->sema);

   if (private->wrapper.callback)
      private->wrapper.callback(&private->wrapper);

   return 0;
}
