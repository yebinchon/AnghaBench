
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ refcount; } ;
struct TYPE_6__ {int name; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_CONNECTION_T ;
typedef TYPE_2__ MMAL_CONNECTION_PRIVATE_T ;


 int LOG_TRACE (char*,int ,TYPE_1__*,...) ;
 int MMAL_SUCCESS ;
 int mmal_connection_destroy_internal (TYPE_1__*) ;

MMAL_STATUS_T mmal_connection_release(MMAL_CONNECTION_T *connection)
{
   MMAL_CONNECTION_PRIVATE_T *private = (MMAL_CONNECTION_PRIVATE_T *)connection;
   LOG_TRACE("connection %s(%p), refcount %i", connection->name, connection,
             private->refcount);

   if (--private->refcount)
      return MMAL_SUCCESS;

   LOG_TRACE("destroying connection %s(%p)", connection->name, connection);
   return mmal_connection_destroy_internal(connection);
}
