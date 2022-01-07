
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secasvar {int flags; } ;


 int SADB_X_EXT_OLD ;

__attribute__((used)) static int
ah_sumsiz_1216(struct secasvar *sav)
{
 if (!sav)
  return -1;
 if (sav->flags & SADB_X_EXT_OLD)
  return 16;
 else
  return 12;
}
