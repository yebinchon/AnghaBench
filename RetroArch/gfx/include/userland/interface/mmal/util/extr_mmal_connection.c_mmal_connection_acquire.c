
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int refcount; } ;
struct TYPE_5__ {int name; } ;
typedef TYPE_1__ MMAL_CONNECTION_T ;
typedef TYPE_2__ MMAL_CONNECTION_PRIVATE_T ;


 int LOG_TRACE (char*,int ,TYPE_1__*,int ) ;

void mmal_connection_acquire(MMAL_CONNECTION_T *connection)
{
   MMAL_CONNECTION_PRIVATE_T *private = (MMAL_CONNECTION_PRIVATE_T *)connection;
   LOG_TRACE("connection %s(%p), refcount %i", connection->name, connection,
             private->refcount);
   private->refcount++;
}
