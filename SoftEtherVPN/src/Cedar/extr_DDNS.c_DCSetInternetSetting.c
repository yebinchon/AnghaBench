
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int InternetSetting; } ;
typedef int INTERNET_SETTING ;
typedef TYPE_1__ DDNS_CLIENT ;


 int Copy (int *,int *,int) ;

void DCSetInternetSetting(DDNS_CLIENT *c, INTERNET_SETTING *t)
{

 if (c == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 Copy(&c->InternetSetting, t, sizeof(INTERNET_SETTING));
}
