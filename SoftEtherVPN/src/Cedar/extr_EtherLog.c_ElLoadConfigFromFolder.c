
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int g ;
typedef int UINT ;
struct TYPE_9__ {int Port; scalar_t__ AutoDeleteCheckDiskFreeSpaceMin; int DeviceList; int HashedPassword; } ;
struct TYPE_8__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int HUB_LOG ;
typedef int FOLDER ;
typedef TYPE_2__ EL ;


 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 int CfgGetBool (int *,char*) ;
 int CfgGetByte (int *,char*,int ,int) ;
 int * CfgGetFolder (int *,char*) ;
 int CfgGetInt (int *,char*) ;
 scalar_t__ CfgGetInt64 (int *,char*) ;
 int CfgIsItem (int *,char*) ;
 scalar_t__ DISK_FREE_SPACE_DEFAULT ;
 scalar_t__ DISK_FREE_SPACE_MIN ;
 int ELOG_IS_BETA ;
 int EiLoadLicenseManager (TYPE_2__*,int *) ;
 int ElAddCaptureDevice (TYPE_2__*,char*,int *,int ) ;
 int FreeToken (TYPE_1__*) ;
 int LockList (int ) ;
 int Sha0 (int ,char*,int ) ;
 int SiLoadHubLogCfg (int *,int *) ;
 int UnlockList (int ) ;
 int Zero (int *,int) ;

void ElLoadConfigFromFolder(EL *e, FOLDER *root)
{
 UINT i;
 TOKEN_LIST *t;
 FOLDER *devices;


 if (e == ((void*)0) || root == ((void*)0))
 {
  return;
 }

 i = CfgGetInt(root, "AdminPort");
 if (i >= 1 && i <= 65535)
 {
  e->Port = i;
 }

 e->AutoDeleteCheckDiskFreeSpaceMin = CfgGetInt64(root, "AutoDeleteCheckDiskFreeSpaceMin");
 if (CfgIsItem(root, "AutoDeleteCheckDiskFreeSpaceMin") == 0 && e->AutoDeleteCheckDiskFreeSpaceMin == 0)
 {
  e->AutoDeleteCheckDiskFreeSpaceMin = DISK_FREE_SPACE_DEFAULT;
 }

 if (e->AutoDeleteCheckDiskFreeSpaceMin != 0)
 {
  if (e->AutoDeleteCheckDiskFreeSpaceMin < DISK_FREE_SPACE_MIN)
  {
   e->AutoDeleteCheckDiskFreeSpaceMin = DISK_FREE_SPACE_MIN;
  }
 }

 if (CfgGetByte(root, "AdminPassword", e->HashedPassword, sizeof(e->HashedPassword)) != sizeof(e->HashedPassword))
 {
  Sha0(e->HashedPassword, "", 0);
 }

 if (ELOG_IS_BETA == 0)
 {
  EiLoadLicenseManager(e, CfgGetFolder(root, "LicenseManager"));
 }

 devices = CfgGetFolder(root, "Devices");
 if(devices != ((void*)0))
 {
  LockList(e->DeviceList);
  {
   t = CfgEnumFolderToTokenList(devices);
   for (i = 0;i < t->NumTokens;i++)
   {
    char *name = t->Token[i];
    FOLDER *f = CfgGetFolder(devices, name);

    if (f != ((void*)0))
    {
     HUB_LOG g;

     Zero(&g, sizeof(g));
     SiLoadHubLogCfg(&g, f);
     ElAddCaptureDevice(e, name, &g, CfgGetBool(f, "NoPromiscuousMode"));
    }
   }
   FreeToken(t);
  }
  UnlockList(e->DeviceList);
 }
}
