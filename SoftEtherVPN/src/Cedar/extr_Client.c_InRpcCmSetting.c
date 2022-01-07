
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HashedPassword; void* LockMode; void* EasyMode; } ;
typedef int PACK ;
typedef TYPE_1__ CM_SETTING ;


 void* PackGetBool (int *,char*) ;
 int PackGetData2 (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcCmSetting(CM_SETTING *c, PACK *p)
{

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(c, sizeof(CM_SETTING));
 c->EasyMode = PackGetBool(p, "EasyMode");
 c->LockMode = PackGetBool(p, "LockMode");
 PackGetData2(p, "HashedPassword", c->HashedPassword, sizeof(c->HashedPassword));
}
