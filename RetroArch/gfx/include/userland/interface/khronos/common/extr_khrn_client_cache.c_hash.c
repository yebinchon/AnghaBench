
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int khrn_hashlittle (void const*,int,int ) ;
 int khrn_hashword (int*,int,int ) ;

__attribute__((used)) static uint32_t hash(const void *data, int len, int sig)
{
   int hash;




   if (!((size_t)data & 3) && !(len & 3))
      hash = khrn_hashword((uint32_t *)data, len >> 2, 0);
   else
      hash = khrn_hashlittle(data, len, 0);

   return (hash & ~0xf) | sig;
}
