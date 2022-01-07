
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int PackAddInt (int *,char*,int) ;

void RpcError(PACK *p, UINT err)
{

 if (p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "error", 1);
 PackAddInt(p, "error_code", err);
}
