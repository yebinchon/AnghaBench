
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int DeviceList; int HashedPassword; int Port; int AutoDeleteCheckDiskFreeSpaceMin; } ;
struct TYPE_6__ {char* DeviceName; int NoPromiscuous; int LogSetting; } ;
typedef int FOLDER ;
typedef TYPE_1__ EL_DEVICE ;
typedef TYPE_2__ EL ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddByte (int *,char*,int ,int) ;
 int CfgAddInt (int *,char*,int ) ;
 int CfgAddInt64 (int *,char*,int ) ;
 int * CfgCreateFolder (int *,char*) ;
 int ELOG_IS_BETA ;
 int EiWriteLicenseManager (int *,TYPE_2__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int SiWriteHubLogCfgEx (int *,int *,int) ;
 int UnlockList (int ) ;

void ElSaveConfigToFolder(EL *e, FOLDER *root)
{
 UINT i;
 FOLDER *devices;

 if (e == ((void*)0) || root == ((void*)0))
 {
  return;
 }

 CfgAddInt64(root, "AutoDeleteCheckDiskFreeSpaceMin", e->AutoDeleteCheckDiskFreeSpaceMin);

 CfgAddInt(root, "AdminPort", e->Port);

 CfgAddByte(root, "AdminPassword", e->HashedPassword, sizeof(e->HashedPassword));

 if (ELOG_IS_BETA == 0)
 {
  EiWriteLicenseManager(CfgCreateFolder(root, "LicenseManager"), e);
 }

 devices = CfgCreateFolder(root,"Devices");

 LockList(e->DeviceList);
 {
  for (i = 0;i < LIST_NUM(e->DeviceList);i++)
  {
   FOLDER *f;
   EL_DEVICE *d = LIST_DATA(e->DeviceList, i);

   f = CfgCreateFolder(devices, d->DeviceName);
   SiWriteHubLogCfgEx(f, &d->LogSetting, 1);
   CfgAddBool(f, "NoPromiscuousMode", d->NoPromiscuous);
  }
 }
 UnlockList(e->DeviceList);
}
