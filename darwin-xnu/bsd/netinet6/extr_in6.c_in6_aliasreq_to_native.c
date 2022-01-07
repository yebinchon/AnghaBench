
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_aliasreq_64 {int dummy; } ;
struct in6_aliasreq_32 {int dummy; } ;
struct in6_aliasreq {int dummy; } ;


 int bcopy (void*,struct in6_aliasreq*,int) ;
 int in6_aliasreq_32_to_64 (struct in6_aliasreq_32*,struct in6_aliasreq_64*) ;
 int in6_aliasreq_64_to_32 (struct in6_aliasreq_64*,struct in6_aliasreq_32*) ;

__attribute__((used)) static struct in6_aliasreq *
in6_aliasreq_to_native(void *data, int data_is_64, struct in6_aliasreq *dst)
{

 if (data_is_64)
  bcopy(data, dst, sizeof (*dst));
 else
  in6_aliasreq_32_to_64((struct in6_aliasreq_32 *)data,
      (struct in6_aliasreq_64 *)dst);







 return (dst);
}
