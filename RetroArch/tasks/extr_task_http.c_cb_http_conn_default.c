
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
struct TYPE_4__ {int error; int * cb; int handle; TYPE_1__ connection; } ;
typedef TYPE_2__ http_handle_t ;


 int net_http_new (int ) ;
 int network_init () ;

__attribute__((used)) static int cb_http_conn_default(void *data_, size_t len)
{
   http_handle_t *http = (http_handle_t*)data_;

   if (!http)
      return -1;

   if (!network_init())
      return -1;

   http->handle = net_http_new(http->connection.handle);

   if (!http->handle)
   {
      http->error = 1;
      return -1;
   }

   http->cb = ((void*)0);

   return 0;
}
