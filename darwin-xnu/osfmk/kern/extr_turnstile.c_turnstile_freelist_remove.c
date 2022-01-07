
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int ts_free_turnstiles; } ;


 int SLIST_EMPTY (int *) ;
 struct turnstile* SLIST_FIRST (int *) ;
 int SLIST_INIT (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 struct turnstile* TURNSTILE_NULL ;
 int TURNSTILE_STATE_FREELIST ;
 int assert (int) ;
 int ts_free_elm ;
 int turnstile_state_remove (struct turnstile*,int ) ;

__attribute__((used)) static struct turnstile *
turnstile_freelist_remove(
 struct turnstile *ts)
{
 struct turnstile *ret_turnstile = TURNSTILE_NULL;
 assert(!SLIST_EMPTY(&ts->ts_free_turnstiles));
 ret_turnstile = SLIST_FIRST(&ts->ts_free_turnstiles);
 SLIST_REMOVE_HEAD(&ts->ts_free_turnstiles, ts_free_elm);
 assert(ret_turnstile != TURNSTILE_NULL);
 turnstile_state_remove(ret_turnstile, TURNSTILE_STATE_FREELIST);

 SLIST_INIT(&ret_turnstile->ts_free_turnstiles);
 return ret_turnstile;
}
