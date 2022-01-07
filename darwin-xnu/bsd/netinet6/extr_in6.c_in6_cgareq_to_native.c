
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_cgareq_64 {int dummy; } ;
struct in6_cgareq_32 {int dummy; } ;
struct in6_cgareq {int dummy; } ;


 int bcopy (void*,struct in6_cgareq*,int) ;
 int in6_cgareq_32_to_64 (struct in6_cgareq_32*,struct in6_cgareq_64*) ;
 int in6_cgareq_64_to_32 (struct in6_cgareq_64*,struct in6_cgareq_32*) ;

__attribute__((used)) static struct in6_cgareq *
in6_cgareq_to_native(void *data, int is64, struct in6_cgareq *dst)
{

 if (is64)
  bcopy(data, dst, sizeof (*dst));
 else
  in6_cgareq_32_to_64((struct in6_cgareq_32 *)data,
      (struct in6_cgareq_64 *)dst);







 return (dst);
}
