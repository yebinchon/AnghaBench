
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * handle; int (* cb ) (TYPE_2__*,int ) ;} ;
struct TYPE_6__ {TYPE_1__ connection; } ;
typedef TYPE_2__ http_handle_t ;


 scalar_t__ net_http_connection_done (int *) ;
 int net_http_connection_free (int *) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static int task_http_conn_iterate_transfer_parse(
      http_handle_t *http)
{
   if (net_http_connection_done(http->connection.handle))
   {
      if (http->connection.handle && http->connection.cb)
         http->connection.cb(http, 0);
   }

   net_http_connection_free(http->connection.handle);

   http->connection.handle = ((void*)0);

   return 0;
}
