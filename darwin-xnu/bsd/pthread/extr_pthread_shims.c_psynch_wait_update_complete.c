
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int dummy; } ;


 int TURNSTILE_INTERLOCK_NOT_HELD ;
 int assert (struct turnstile*) ;
 int turnstile_update_inheritor_complete (struct turnstile*,int ) ;

__attribute__((used)) static void
psynch_wait_update_complete(struct turnstile *ts)
{
 assert(ts);
 turnstile_update_inheritor_complete(ts, TURNSTILE_INTERLOCK_NOT_HELD);
}
