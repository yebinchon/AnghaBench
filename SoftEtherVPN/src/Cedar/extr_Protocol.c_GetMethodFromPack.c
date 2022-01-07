
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int PACK ;


 int PackGetStr (int *,char*,char*,scalar_t__) ;

bool GetMethodFromPack(PACK *p, char *method, UINT size)
{

 if (p == ((void*)0) || method == ((void*)0) || size == 0)
 {
  return 0;
 }

 return PackGetStr(p, "method", method, size);
}
