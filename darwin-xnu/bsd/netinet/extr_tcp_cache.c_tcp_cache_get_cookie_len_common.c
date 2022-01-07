
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_cache_key_src {int dummy; } ;
struct tcp_cache_head {int dummy; } ;
struct tcp_cache {unsigned int tc_tfo_cookie_len; } ;


 int tcp_cache_unlock (struct tcp_cache_head*) ;
 struct tcp_cache* tcp_getcache_with_lock (struct tcp_cache_key_src*,int,struct tcp_cache_head**) ;

__attribute__((used)) static unsigned int tcp_cache_get_cookie_len_common(struct tcp_cache_key_src *tcks)
{
 struct tcp_cache_head *head;
 struct tcp_cache *tpcache;
 unsigned int cookie_len;


 tpcache = tcp_getcache_with_lock(tcks, 1, &head);
 if (tpcache == ((void*)0))
  return (0);

 cookie_len = tpcache->tc_tfo_cookie_len;

 tcp_cache_unlock(head);

 return cookie_len;
}
