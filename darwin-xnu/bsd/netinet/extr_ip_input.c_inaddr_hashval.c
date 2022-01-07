
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int inaddr_hashp ;
 int inaddr_nhash ;

u_int32_t
inaddr_hashval(u_int32_t key)
{





 if (inaddr_nhash > 1)
  return ((key * inaddr_hashp) % inaddr_nhash);
 else
  return (0);
}
