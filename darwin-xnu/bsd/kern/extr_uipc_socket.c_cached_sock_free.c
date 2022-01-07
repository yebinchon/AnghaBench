
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int cache_timestamp; } ;


 int STAILQ_INSERT_TAIL (int *,struct socket*,int ) ;
 scalar_t__ cached_sock_count ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ max_cached_sock_count ;
 int net_uptime () ;
 int so_cache_ent ;
 int so_cache_head ;
 scalar_t__ so_cache_hw ;
 int so_cache_mtx ;
 int so_cache_time ;
 int so_cache_zone ;
 int zfree (int ,struct socket*) ;

__attribute__((used)) static void
cached_sock_free(struct socket *so)
{

 lck_mtx_lock(so_cache_mtx);

 so_cache_time = net_uptime();
 if (++cached_sock_count > max_cached_sock_count) {
  --cached_sock_count;
  lck_mtx_unlock(so_cache_mtx);
  zfree(so_cache_zone, so);
 } else {
  if (so_cache_hw < cached_sock_count)
   so_cache_hw = cached_sock_count;

  STAILQ_INSERT_TAIL(&so_cache_head, so, so_cache_ent);

  so->cache_timestamp = so_cache_time;
  lck_mtx_unlock(so_cache_mtx);
 }
}
