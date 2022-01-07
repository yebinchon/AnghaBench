
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t minor_t ;
typedef int dtrace_state_t ;


 int M_TEMP ;
 int _FREE (int *,int ) ;
 int ** dtrace_clients ;

void
dtrace_state_free(minor_t minor)
{
 dtrace_state_t *state = dtrace_clients[minor];
 dtrace_clients[minor] = ((void*)0);
 _FREE(state, M_TEMP);
}
