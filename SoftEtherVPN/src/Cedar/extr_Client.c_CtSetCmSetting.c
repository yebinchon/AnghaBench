
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CmSetting; } ;
typedef int CM_SETTING ;
typedef TYPE_1__ CLIENT ;


 int CiSaveConfigurationFile (TYPE_1__*) ;
 int Copy (int ,int *,int) ;

bool CtSetCmSetting(CLIENT *c, CM_SETTING *s)
{

 if (c == ((void*)0) || s == ((void*)0))
 {
  return 0;
 }

 Copy(c->CmSetting, s, sizeof(CM_SETTING));

 CiSaveConfigurationFile(c);

 return 1;
}
