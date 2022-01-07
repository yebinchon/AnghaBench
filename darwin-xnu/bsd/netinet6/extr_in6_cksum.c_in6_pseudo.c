
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct in6_addr {int dummy; } ;


 int ADDCARRY (scalar_t__) ;
 int IN6_IS_SCOPE_EMBED (struct in6_addr const*) ;

uint16_t
in6_pseudo(const struct in6_addr *src, const struct in6_addr *dst, uint32_t x)
{
 uint32_t sum = 0;
 const uint16_t *w;




 w = (const uint16_t *)src;
 sum += w[0];
 if (!IN6_IS_SCOPE_EMBED(src))
  sum += w[1];
 sum += w[2]; sum += w[3]; sum += w[4]; sum += w[5];
 sum += w[6]; sum += w[7];




 w = (const uint16_t *)dst;
 sum += w[0];
 if (!IN6_IS_SCOPE_EMBED(dst))
  sum += w[1];
 sum += w[2]; sum += w[3]; sum += w[4]; sum += w[5];
 sum += w[6]; sum += w[7];







 sum += x;


 ADDCARRY(sum);

 return (sum);
}
