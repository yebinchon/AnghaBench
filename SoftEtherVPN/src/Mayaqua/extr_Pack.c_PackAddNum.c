
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;
typedef int ELEMENT ;


 int * PackAddInt (int *,char*,int ) ;

ELEMENT *PackAddNum(PACK *p, char *name, UINT num)
{
 return PackAddInt(p, name, num);
}
