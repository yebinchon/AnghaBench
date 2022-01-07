
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ its_size; } ;


 TYPE_1__* ipc_table_requests ;
 int ipc_table_requests_size ;

unsigned int
ipc_table_max_requests(void)
{
 if (!ipc_table_requests || ipc_table_requests_size < 2)
  return 0;
 return (unsigned int)ipc_table_requests[ipc_table_requests_size - 2].its_size;
}
