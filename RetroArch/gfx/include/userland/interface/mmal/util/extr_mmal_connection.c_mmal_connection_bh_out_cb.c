
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ length; int data; } ;
struct TYPE_11__ {int (* callback ) (TYPE_2__*) ;int queue; } ;
struct TYPE_10__ {int name; scalar_t__ userdata; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_CONNECTION_T ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 int LOG_TRACE (char*,int ,TYPE_1__*,TYPE_3__*,int ,int) ;
 int mmal_queue_put (int ,TYPE_3__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void mmal_connection_bh_out_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_CONNECTION_T *connection = (MMAL_CONNECTION_T *)port->userdata;

   LOG_TRACE("(%s)%p,%p,%p,%i", port->name, port, buffer, buffer->data, (int)buffer->length);


   mmal_queue_put(connection->queue, buffer);

   if (connection->callback)
      connection->callback(connection);
}
