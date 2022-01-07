
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ebb_request ;
struct TYPE_3__ {int * (* new_request ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ebb_connection ;


 int * stub1 (TYPE_1__*) ;

__attribute__((used)) static ebb_request*
new_request_wrapper(void *data)
{
  ebb_connection *connection = data;
  if(connection->new_request)
    return connection->new_request(connection);
  return ((void*)0);
}
