
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int (* on_release ) (TYPE_5__*) ;scalar_t__ data; } ;
struct TYPE_9__ {TYPE_5__ response; } ;
typedef TYPE_1__ ebb_request_extras ;
struct TYPE_10__ {scalar_t__ data; } ;
typedef TYPE_2__ ebb_request ;
struct TYPE_11__ {TYPE_2__* request; } ;
typedef TYPE_3__ ebb_connection_extras ;
struct TYPE_12__ {scalar_t__ data; } ;
typedef TYPE_4__ ebb_connection ;


 int ebb_connection_schedule_close (TYPE_4__*) ;
 int free (TYPE_2__*) ;
 int stub1 (TYPE_5__*) ;

__attribute__((used)) static void on_connection_response_continue(ebb_connection* connection)
{
 ebb_connection_extras* connection_extras = (ebb_connection_extras*)(connection->data);
 ebb_request* request = connection_extras->request;
 ebb_request_extras* request_extras = (ebb_request_extras*)request->data;

 if (request_extras->response.data && request_extras->response.on_release)
  request_extras->response.on_release(&request_extras->response);
 ebb_connection_schedule_close(connection);
 free(request);
}
