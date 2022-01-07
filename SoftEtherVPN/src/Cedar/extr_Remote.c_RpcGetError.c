
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int ERR_DISCONNECTED ;
 int PackGetInt (int *,char*) ;

UINT RpcGetError(PACK *p)
{

 if (p == ((void*)0))
 {
  return ERR_DISCONNECTED;
 }

 return PackGetInt(p, "error_code");
}
