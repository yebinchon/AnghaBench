
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secasvar {int dummy; } ;



__attribute__((used)) static int
ah_sumsiz_zero(struct secasvar *sav)
{
 if (!sav)
  return -1;
 return 0;
}
