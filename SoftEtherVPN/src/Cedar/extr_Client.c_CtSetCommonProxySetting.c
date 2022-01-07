
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CommonProxySetting; } ;
typedef int INTERNET_SETTING ;
typedef TYPE_1__ CLIENT ;


 int CiSaveConfigurationFile (TYPE_1__*) ;
 int Copy (int *,int *,int) ;

bool CtSetCommonProxySetting(CLIENT *c, INTERNET_SETTING *a)
{

 if (c == ((void*)0) || a == ((void*)0))
 {
  return 0;
 }

 Copy(&c->CommonProxySetting, a, sizeof(INTERNET_SETTING));


 CiSaveConfigurationFile(c);

 return 1;
}
