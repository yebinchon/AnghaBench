
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* callback ) (TYPE_2__*) ;} ;
struct TYPE_6__ {int queue; } ;
typedef TYPE_1__ MMAL_POOL_T ;
typedef TYPE_2__ MMAL_CONNECTION_T ;
typedef int MMAL_BUFFER_HEADER_T ;
typedef int MMAL_BOOL_T ;


 int MMAL_PARAM_UNUSED (TYPE_1__*) ;
 int mmal_queue_put (int ,int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static MMAL_BOOL_T mmal_connection_bh_release_cb(MMAL_POOL_T *pool, MMAL_BUFFER_HEADER_T *buffer,
   void *userdata)
{
   MMAL_CONNECTION_T *connection = (MMAL_CONNECTION_T *)userdata;
   MMAL_PARAM_UNUSED(pool);


   mmal_queue_put(pool->queue, buffer);

   if (connection->callback)
      connection->callback(connection);

   return 0;
}
