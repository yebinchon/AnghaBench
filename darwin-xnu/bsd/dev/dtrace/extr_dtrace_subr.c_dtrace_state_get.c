
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t minor_t ;
typedef int dtrace_state_t ;


 int ASSERT (int) ;
 size_t DTRACE_NCLIENTS ;
 int ** dtrace_clients ;

dtrace_state_t*
dtrace_state_get(minor_t minor)
{
 ASSERT(minor < DTRACE_NCLIENTS);
 return dtrace_clients[minor];
}
