
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t minor_t ;
typedef int dtrace_state_t ;


 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int _FREE (int *,int ) ;
 int * _MALLOC (int,int ,int) ;
 int * dtrace_casptr (int *,int *,int *) ;
 int * dtrace_clients ;

dtrace_state_t*
dtrace_state_allocate(minor_t minor)
{
 dtrace_state_t *state = _MALLOC(sizeof(dtrace_state_t), M_TEMP, M_ZERO | M_WAITOK);
 if (dtrace_casptr(&dtrace_clients[minor], ((void*)0), state) != ((void*)0)) {

  _FREE(state, M_TEMP);
  return ((void*)0);
 }
 return state;
}
