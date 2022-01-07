
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;


 scalar_t__ PackGetInt (int *,char*) ;

bool PackGetBool(PACK *p, char *name)
{
 return PackGetInt(p, name) == 0 ? 0 : 1;
}
