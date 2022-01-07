
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CommonProxySetting; } ;
typedef int INTERNET_SETTING ;
typedef TYPE_1__ CLIENT ;


 int Copy (int *,int *,int) ;

bool CtGetCommonProxySetting(CLIENT *c, INTERNET_SETTING *a)
{

 if (c == ((void*)0) || a == ((void*)0))
 {
  return 0;
 }

 Copy(a, &c->CommonProxySetting, sizeof(INTERNET_SETTING));

 return 1;
}
