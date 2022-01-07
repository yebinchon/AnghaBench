
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CheckServerCert; int lock; int * ServerCert; int * Policy; int Auth; int Option; scalar_t__ Offline; } ;
typedef TYPE_1__ LINK ;
typedef int FOLDER ;
typedef int BUF ;


 int CfgAddBool (int *,char*,int) ;
 int CfgAddBuf (int *,char*,int *) ;
 int CfgCreateFolder (int *,char*) ;
 int CiWriteClientAuth (int ,int ) ;
 int CiWriteClientOption (int ,int ) ;
 int FreeBuf (int *) ;
 int Lock (int ) ;
 int SiWritePolicyCfg (int ,int *,int) ;
 int Unlock (int ) ;
 int * XToBuf (int *,int) ;

void SiWriteHubLinkCfg(FOLDER *f, LINK *k)
{

 if (f == ((void*)0) || k == ((void*)0))
 {
  return;
 }

 Lock(k->lock);
 {

  CfgAddBool(f, "Online", k->Offline ? 0 : 1);


  CiWriteClientOption(CfgCreateFolder(f, "ClientOption"), k->Option);


  CiWriteClientAuth(CfgCreateFolder(f, "ClientAuth"), k->Auth);


  if (k->Policy != ((void*)0))
  {
   SiWritePolicyCfg(CfgCreateFolder(f, "Policy"), k->Policy, 1);
  }

  CfgAddBool(f, "CheckServerCert", k->CheckServerCert);

  if (k->ServerCert != ((void*)0))
  {
   BUF *b = XToBuf(k->ServerCert, 0);
   CfgAddBuf(f, "ServerCert", b);
   FreeBuf(b);
  }
 }
 Unlock(k->lock);
}
