
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* s6_addr16; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; TYPE_1__ sin6_addr; } ;
struct sockaddr {int sa_len; scalar_t__ sa_family; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ IN6_IS_SCOPE_EMBED (TYPE_1__*) ;
 int bcopy (struct sockaddr const*,struct sockaddr*,int) ;
 scalar_t__ ntohs (scalar_t__) ;

__attribute__((used)) static void
nstat_copy_sa_out(
 const struct sockaddr *src,
 struct sockaddr *dst,
 int maxlen)
{
 if (src->sa_len > maxlen) return;

 bcopy(src, dst, src->sa_len);
 if (src->sa_family == AF_INET6 &&
  src->sa_len >= sizeof(struct sockaddr_in6))
 {
  struct sockaddr_in6 *sin6 = (struct sockaddr_in6*)(void *)dst;
  if (IN6_IS_SCOPE_EMBED(&sin6->sin6_addr))
  {
   if (sin6->sin6_scope_id == 0)
    sin6->sin6_scope_id = ntohs(sin6->sin6_addr.s6_addr16[1]);
   sin6->sin6_addr.s6_addr16[1] = 0;
  }
 }
}
