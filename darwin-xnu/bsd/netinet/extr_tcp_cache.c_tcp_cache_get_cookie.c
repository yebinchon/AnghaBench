
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_char ;
struct tcpcb {int dummy; } ;
struct tcp_cache_key_src {int dummy; } ;


 int tcp_cache_get_cookie_common (struct tcp_cache_key_src*,int *,int *) ;
 int tcp_cache_key_src_create (struct tcpcb*,struct tcp_cache_key_src*) ;

int tcp_cache_get_cookie(struct tcpcb *tp, u_char *cookie, u_int8_t *len)
{
 struct tcp_cache_key_src tcks;

 tcp_cache_key_src_create(tp, &tcks);
 return tcp_cache_get_cookie_common(&tcks, cookie, len);
}
