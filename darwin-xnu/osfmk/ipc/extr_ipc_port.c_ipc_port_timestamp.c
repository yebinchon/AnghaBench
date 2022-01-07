
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_port_timestamp_t ;


 int OSIncrementAtomic (int *) ;
 int ipc_port_timestamp_data ;

ipc_port_timestamp_t
ipc_port_timestamp(void)
{
 return OSIncrementAtomic(&ipc_port_timestamp_data);
}
