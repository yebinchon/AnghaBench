
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_5__ {int OsType; } ;
struct TYPE_4__ {char* DeviceName; char* HubName; int TapMacAddress; scalar_t__ TapMode; scalar_t__ LimitBroadcast; scalar_t__ Monitor; scalar_t__ Local; } ;
typedef TYPE_1__ LOCALBRIDGE ;
typedef int FOLDER ;


 int CfgAddBool (int *,char*,scalar_t__) ;
 int CfgAddStr (int *,char*,char*) ;
 TYPE_3__* GetOsInfo () ;
 int MAX_SIZE ;
 int MacToStr (char*,int,int ) ;
 scalar_t__ OS_IS_UNIX (int ) ;

void SiWriteLocalBridgeCfg(FOLDER *f, LOCALBRIDGE *br)
{

 if (f == ((void*)0) || br == ((void*)0))
 {
  return;
 }

 CfgAddStr(f, "DeviceName", br->DeviceName);
 CfgAddStr(f, "HubName", br->HubName);
 CfgAddBool(f, "NoPromiscuousMode", br->Local);
 CfgAddBool(f, "MonitorMode", br->Monitor);
 CfgAddBool(f, "LimitBroadcast", br->LimitBroadcast);

 if (OS_IS_UNIX(GetOsInfo()->OsType))
 {
  CfgAddBool(f, "TapMode", br->TapMode);

  if (br->TapMode)
  {
   char tmp[MAX_SIZE];
   MacToStr(tmp, sizeof(tmp), br->TapMacAddress);
   CfgAddStr(f, "TapMacAddress", tmp);
  }
 }
}
