
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t minor_t ;


 int DTRACE_NCLIENTS ;
 int atomic_add_32 (int *,int) ;
 int ** dtrace_clients ;
 int next_minor ;

minor_t
dtrace_state_reserve(void)
{
 for (int i = 0; i < DTRACE_NCLIENTS; i++) {
  minor_t minor = atomic_add_32(&next_minor, 1) % DTRACE_NCLIENTS;
  if (dtrace_clients[minor] == ((void*)0))
   return minor;
 }
 return 0;
}
