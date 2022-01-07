
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HashedPassword; int LockMode; int EasyMode; } ;
typedef int PACK ;
typedef TYPE_1__ CM_SETTING ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddData (int *,char*,int ,int) ;

void OutRpcCmSetting(PACK *p, CM_SETTING *c)
{

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddBool(p, "EasyMode", c->EasyMode);
 PackAddBool(p, "LockMode", c->LockMode);
 PackAddData(p, "HashedPassword", c->HashedPassword, sizeof(c->HashedPassword));
}
