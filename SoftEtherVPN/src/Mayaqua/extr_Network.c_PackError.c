
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int * NewPack () ;
 int PackAddInt (int *,char*,int ) ;

PACK *PackError(UINT error)
{
 PACK *p;

 p = NewPack();
 PackAddInt(p, "error", error);

 return p;
}
