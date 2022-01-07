
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HUB_LOG ;
typedef int HUB ;


 int SetHubLogSettingEx (int *,int *,int) ;

void SetHubLogSetting(HUB *h, HUB_LOG *setting)
{
 SetHubLogSettingEx(h, setting, 0);
}
