
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int MY_SHA0_hash (unsigned char const*,int,unsigned char*) ;

__attribute__((used)) static void Internal_Sha0(unsigned char *dest, const unsigned char *src, const UINT size)
{
 MY_SHA0_hash(src, (int)size, dest);
}
