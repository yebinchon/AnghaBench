
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_state_t ;
struct TYPE_2__ {int * dta_state; int * dta_enabling; } ;


 int ASSERT (int ) ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 TYPE_1__ dtrace_anon ;
 int dtrace_enabling_destroy (int *) ;
 int dtrace_lock ;
 int * dtrace_retained ;

__attribute__((used)) static dtrace_state_t *
dtrace_anon_grab(void)
{
 dtrace_state_t *state;

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 if ((state = dtrace_anon.dta_state) == ((void*)0)) {
  ASSERT(dtrace_anon.dta_enabling == ((void*)0));
  return (((void*)0));
 }

 ASSERT(dtrace_anon.dta_enabling != ((void*)0));
 ASSERT(dtrace_retained != ((void*)0));

 dtrace_enabling_destroy(dtrace_anon.dta_enabling);
 dtrace_anon.dta_enabling = ((void*)0);
 dtrace_anon.dta_state = ((void*)0);

 return (state);
}
