
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int LogSetting; } ;
typedef int HUB_LOG ;
typedef TYPE_1__ HUB ;


 int Copy (int *,int *,int) ;

void GetHubLogSetting(HUB *h, HUB_LOG *setting)
{

 if (setting == ((void*)0) || h == ((void*)0))
 {
  return;
 }

 Copy(setting, &h->LogSetting, sizeof(HUB_LOG));
}
