
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* priv; } ;
struct TYPE_11__ {int (* cb ) (TYPE_2__*,TYPE_4__*,int ) ;int userdata; } ;
struct TYPE_10__ {int queue; } ;
struct TYPE_9__ {int refcount; scalar_t__ owner; } ;
typedef TYPE_2__ MMAL_POOL_T ;
typedef TYPE_3__ MMAL_POOL_PRIVATE_T ;
typedef TYPE_4__ MMAL_BUFFER_HEADER_T ;
typedef int MMAL_BOOL_T ;


 int mmal_queue_put (int ,TYPE_4__*) ;
 int stub1 (TYPE_2__*,TYPE_4__*,int ) ;

__attribute__((used)) static void mmal_pool_buffer_header_release(MMAL_BUFFER_HEADER_T *header)
{
   MMAL_POOL_T *pool = (MMAL_POOL_T *)header->priv->owner;
   MMAL_POOL_PRIVATE_T *private = (MMAL_POOL_PRIVATE_T *)pool;
   MMAL_BOOL_T queue_buffer = 1;

   header->priv->refcount = 1;
   if(private->cb)
      queue_buffer = private->cb(pool, header, private->userdata);
   if (queue_buffer)
      mmal_queue_put(pool->queue, header);
}
