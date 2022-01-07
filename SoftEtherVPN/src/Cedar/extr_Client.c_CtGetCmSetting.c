
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CmSetting; } ;
typedef int CM_SETTING ;
typedef TYPE_1__ CLIENT ;


 int Copy (int *,int ,int) ;

bool CtGetCmSetting(CLIENT *c, CM_SETTING *s)
{

 if (c == ((void*)0) || s == ((void*)0))
 {
  return 0;
 }

 Copy(s, c->CmSetting, sizeof(CM_SETTING));

 return 1;
}
