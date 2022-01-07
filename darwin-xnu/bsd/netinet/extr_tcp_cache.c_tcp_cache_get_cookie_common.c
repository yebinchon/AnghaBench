
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef int u_char ;
struct tcp_cache_key_src {int dummy; } ;
struct tcp_cache_head {int dummy; } ;
struct tcp_cache {scalar_t__ tc_tfo_cookie_len; int tc_tfo_cookie; } ;


 int VERIFY (int) ;
 int memcpy (int *,int ,scalar_t__) ;
 int tcp_cache_unlock (struct tcp_cache_head*) ;
 struct tcp_cache* tcp_getcache_with_lock (struct tcp_cache_key_src*,int,struct tcp_cache_head**) ;

__attribute__((used)) static int tcp_cache_get_cookie_common(struct tcp_cache_key_src *tcks, u_char *cookie, u_int8_t *len)
{
 struct tcp_cache_head *head;
 struct tcp_cache *tpcache;


 tpcache = tcp_getcache_with_lock(tcks, 1, &head);
 if (tpcache == ((void*)0)) {
  return (0);
 }

 if (tpcache->tc_tfo_cookie_len == 0) {
  tcp_cache_unlock(head);
  return (0);
 }





 VERIFY(tpcache->tc_tfo_cookie_len <= *len);

 memcpy(cookie, tpcache->tc_tfo_cookie, tpcache->tc_tfo_cookie_len);
 *len = tpcache->tc_tfo_cookie_len;

 tcp_cache_unlock(head);

 return (1);
}
