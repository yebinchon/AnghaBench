
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int PackGetIndexCount (int *,char*) ;

UINT SiNumAccessFromPack(PACK *p)
{

 if (p == ((void*)0))
 {
  return 0;
 }

 return PackGetIndexCount(p, "Active");
}
