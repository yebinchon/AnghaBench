
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int MIN (int ,int) ;
 int PackGetInt (int *,char*) ;

UINT PackGetNum(PACK *p, char *name)
{
 return MIN(PackGetInt(p, name), 65536);
}
