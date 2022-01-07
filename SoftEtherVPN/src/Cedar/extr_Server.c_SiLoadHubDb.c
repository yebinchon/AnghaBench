
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* HubDb; } ;
struct TYPE_6__ {int AcList; int CrlList; int RootCertList; } ;
typedef TYPE_2__ HUB ;
typedef int FOLDER ;


 int CfgGetFolder (int *,char*) ;
 int SiLoadAcList (int ,int ) ;
 int SiLoadCertList (int ,int ) ;
 int SiLoadCrlList (int ,int ) ;
 int SiLoadGroupList (TYPE_2__*,int ) ;
 int SiLoadUserList (TYPE_2__*,int ) ;

void SiLoadHubDb(HUB *h, FOLDER *f)
{

 if (f == ((void*)0) || h == ((void*)0))
 {
  return;
 }

 SiLoadGroupList(h, CfgGetFolder(f, "GroupList"));
 SiLoadUserList(h, CfgGetFolder(f, "UserList"));

 if (h->HubDb != ((void*)0))
 {
  SiLoadCertList(h->HubDb->RootCertList, CfgGetFolder(f, "CertList"));
  SiLoadCrlList(h->HubDb->CrlList, CfgGetFolder(f, "CrlList"));
  SiLoadAcList(h->HubDb->AcList, CfgGetFolder(f, "IPAccessControlList"));
 }
}
