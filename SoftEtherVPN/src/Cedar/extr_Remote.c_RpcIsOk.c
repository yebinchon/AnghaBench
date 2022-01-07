
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;


 scalar_t__ PackGetInt (int *,char*) ;

bool RpcIsOk(PACK *p)
{

 if (p == ((void*)0))
 {
  return 0;
 }

 if (PackGetInt(p, "error") == 0)
 {
  return 1;
 }
 else
 {
  return 0;
 }
}
