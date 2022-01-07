
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {scalar_t__ ts_proprietor; int ts_free_turnstiles; } ;


 int SLIST_INSERT_HEAD (int *,struct turnstile*,int ) ;
 int TURNSTILE_STATE_FREELIST ;
 int assert (int) ;
 int ts_free_elm ;
 scalar_t__ turnstile_get_type (struct turnstile*) ;
 int turnstile_state_add (struct turnstile*,int ) ;

__attribute__((used)) static void
turnstile_freelist_insert(
 struct turnstile *dst_ts,
 struct turnstile *free_ts)
{
 assert(turnstile_get_type(dst_ts) == turnstile_get_type(free_ts));
 assert(dst_ts->ts_proprietor == free_ts->ts_proprietor);
 turnstile_state_add(free_ts, TURNSTILE_STATE_FREELIST);
 SLIST_INSERT_HEAD(&dst_ts->ts_free_turnstiles, free_ts, ts_free_elm);
}
