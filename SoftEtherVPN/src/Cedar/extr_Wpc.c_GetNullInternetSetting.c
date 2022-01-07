
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ret ;
typedef int INTERNET_SETTING ;


 int Zero (int *,int) ;

INTERNET_SETTING *GetNullInternetSetting()
{
 static INTERNET_SETTING ret;

 Zero(&ret, sizeof(ret));

 return &ret;
}
