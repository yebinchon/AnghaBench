
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tmp ;
typedef int tapaddr ;
typedef int nic ;
typedef int hub ;
typedef char UCHAR ;
struct TYPE_9__ {int OsType; } ;
struct TYPE_8__ {int Size; int Buf; } ;
struct TYPE_7__ {int Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int FOLDER ;
typedef TYPE_2__ BUF ;


 int AddLocalBridge (int ,char*,char*,scalar_t__,scalar_t__,int,char*,scalar_t__) ;
 scalar_t__ CfgGetBool (int *,char*) ;
 scalar_t__ CfgGetStr (int *,char*,char*,int) ;
 int Copy (char*,int ,int) ;
 int FreeBuf (TYPE_2__*) ;
 TYPE_5__* GetOsInfo () ;
 scalar_t__ IsEmptyStr (char*) ;
 int MAX_SIZE ;
 scalar_t__ OS_IS_UNIX (int ) ;
 TYPE_2__* StrToBin (char*) ;
 int Zero (char*,int) ;

void SiLoadLocalBridgeCfg(SERVER *s, FOLDER *f)
{
 char hub[MAX_SIZE];
 char nic[MAX_SIZE];
 bool tapmode = 0;
 UCHAR tapaddr[6];

 if (s == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 Zero(hub, sizeof(hub));
 Zero(nic, sizeof(nic));

 CfgGetStr(f, "HubName", hub, sizeof(hub));
 CfgGetStr(f, "DeviceName", nic, sizeof(nic));

 if (IsEmptyStr(hub) || IsEmptyStr(nic)
  )
 {
  return;
 }

 if (OS_IS_UNIX(GetOsInfo()->OsType))
 {
  if (CfgGetBool(f, "TapMode"))
  {
   char tmp[MAX_SIZE];
   tapmode = 1;
   Zero(tapaddr, sizeof(tapaddr));
   if (CfgGetStr(f, "TapMacAddress", tmp, sizeof(tmp)))
   {
    BUF *b;
    b = StrToBin(tmp);
    if (b != ((void*)0) && b->Size == 6)
    {
     Copy(tapaddr, b->Buf, sizeof(tapaddr));
    }
    FreeBuf(b);
   }
  }
 }

 AddLocalBridge(s->Cedar, hub, nic, CfgGetBool(f, "NoPromiscuousMode"), CfgGetBool(f, "MonitorMode"),
  tapmode, tapaddr, CfgGetBool(f, "LimitBroadcast"));
}
