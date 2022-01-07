
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* userdata; int cb; } ;
typedef int MMAL_POOL_T ;
typedef TYPE_1__ MMAL_POOL_PRIVATE_T ;
typedef int MMAL_POOL_BH_CB_T ;



void mmal_pool_callback_set(MMAL_POOL_T *pool, MMAL_POOL_BH_CB_T cb, void *userdata)
{
   MMAL_POOL_PRIVATE_T *private = (MMAL_POOL_PRIVATE_T *)pool;
   private->cb = cb;
   private->userdata = userdata;
}
