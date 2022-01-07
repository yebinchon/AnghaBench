
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtentry {int rt_flags; } ;
typedef int boolean_t ;
struct TYPE_2__ {int sa_family; } ;


 int AF_INET ;
 int AF_INET6 ;
 int RN (struct rtentry*) ;
 int RTF_CONDEMNED ;
 int RTF_UP ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int in6_validate (int ) ;
 int in_validate (int ) ;
 TYPE_1__* rt_key (struct rtentry*) ;

boolean_t
rt_validate(struct rtentry *rt)
{
 RT_LOCK_ASSERT_HELD(rt);

 if ((rt->rt_flags & (RTF_UP | RTF_CONDEMNED)) == RTF_UP) {
  int af = rt_key(rt)->sa_family;

  if (af == AF_INET)
   (void) in_validate(RN(rt));
  else if (af == AF_INET6)
   (void) in6_validate(RN(rt));
 } else {
  rt = ((void*)0);
 }

 return (rt != ((void*)0));
}
