
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_9__ {void* SecurityLogSwitchType; void* PacketLogSwitchType; } ;
struct TYPE_8__ {int SecurityLogger; int PacketLogger; TYPE_5__ LogSetting; } ;
struct TYPE_7__ {int SecurityLogSwitchType; int PacketLogSwitchType; } ;
typedef TYPE_1__ HUB_LOG ;
typedef TYPE_2__ HUB ;


 int Copy (TYPE_5__*,TYPE_1__*,int) ;
 int SetLogSwitchType (int ,int ) ;

void SetHubLogSettingEx(HUB *h, HUB_LOG *setting, bool no_change_switch_type)
{
 UINT i1, i2;

 if (setting == ((void*)0) || h == ((void*)0))
 {
  return;
 }

 i1 = h->LogSetting.PacketLogSwitchType;
 i2 = h->LogSetting.SecurityLogSwitchType;

 Copy(&h->LogSetting, setting, sizeof(HUB_LOG));

 if (no_change_switch_type)
 {
  h->LogSetting.PacketLogSwitchType = i1;
  h->LogSetting.SecurityLogSwitchType = i2;
 }


 SetLogSwitchType(h->PacketLogger, setting->PacketLogSwitchType);
 SetLogSwitchType(h->SecurityLogger, setting->SecurityLogSwitchType);
}
