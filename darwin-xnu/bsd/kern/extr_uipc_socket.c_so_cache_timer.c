
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ cache_timestamp; } ;
typedef int boolean_t ;


 int FALSE ;
 int SO_CACHE_MAX_FREE_BATCH ;
 scalar_t__ SO_CACHE_TIME_LIMIT ;
 int STAILQ_EMPTY (int *) ;
 struct socket* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TRUE ;
 int VERIFY (int) ;
 scalar_t__ cached_sock_count ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ net_uptime () ;
 int so_cache_ent ;
 int so_cache_head ;
 int so_cache_max_freed ;
 int so_cache_mtx ;
 scalar_t__ so_cache_time ;
 int so_cache_timeouts ;
 int so_cache_zone ;
 int zfree (int ,struct socket*) ;

boolean_t
so_cache_timer(void)
{
 struct socket *p;
 int n_freed = 0;
 boolean_t rc = FALSE;

 lck_mtx_lock(so_cache_mtx);
 so_cache_timeouts++;
 so_cache_time = net_uptime();

 while (!STAILQ_EMPTY(&so_cache_head)) {
  VERIFY(cached_sock_count > 0);
  p = STAILQ_FIRST(&so_cache_head);
  if ((so_cache_time - p->cache_timestamp) <
   SO_CACHE_TIME_LIMIT)
   break;

  STAILQ_REMOVE_HEAD(&so_cache_head, so_cache_ent);
  --cached_sock_count;

  zfree(so_cache_zone, p);

  if (++n_freed >= SO_CACHE_MAX_FREE_BATCH) {
   so_cache_max_freed++;
   break;
  }
 }


 if (!STAILQ_EMPTY(&so_cache_head))
  rc = TRUE;

 lck_mtx_unlock(so_cache_mtx);
 return (rc);
}
