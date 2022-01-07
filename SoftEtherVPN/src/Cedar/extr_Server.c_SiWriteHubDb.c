
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int AcList; int CrlList; int RootCertList; int GroupList; int UserList; } ;
typedef TYPE_1__ HUBDB ;
typedef int FOLDER ;


 int CfgCreateFolder (int *,char*) ;
 int SiWriteAcList (int ,int ) ;
 int SiWriteCertList (int ,int ) ;
 int SiWriteCrlList (int ,int ) ;
 int SiWriteGroupList (int ,int ) ;
 int SiWriteUserList (int ,int ) ;

void SiWriteHubDb(FOLDER *f, HUBDB *db, bool no_save_ac_list)
{

 if (f == ((void*)0) || db == ((void*)0))
 {
  return;
 }

 SiWriteUserList(CfgCreateFolder(f, "UserList"), db->UserList);
 SiWriteGroupList(CfgCreateFolder(f, "GroupList"), db->GroupList);
 SiWriteCertList(CfgCreateFolder(f, "CertList"), db->RootCertList);
 SiWriteCrlList(CfgCreateFolder(f, "CrlList"), db->CrlList);

 if (no_save_ac_list == 0)
 {
  SiWriteAcList(CfgCreateFolder(f, "IPAccessControlList"), db->AcList);
 }
}
