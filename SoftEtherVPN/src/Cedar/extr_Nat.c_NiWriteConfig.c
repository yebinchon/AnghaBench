
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int CfgRw; int * ClientAuth; int * ClientOption; int Online; int AdminPort; int HashedPassword; int AdminK; int AdminX; } ;
typedef TYPE_1__ NAT ;
typedef int FOLDER ;
typedef int BUF ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddBuf (int *,char*,int *) ;
 int CfgAddByte (int *,char*,int ,int) ;
 int CfgAddInt (int *,char*,int ) ;
 int * CfgCreateFolder (int *,int ) ;
 int CfgDeleteFolder (int *) ;
 int FreeBuf (int *) ;
 int * KToBuf (int ,int,int *) ;
 int Lock (int ) ;
 int NiWriteClientData (TYPE_1__*,int *) ;
 int NiWriteVhOption (TYPE_1__*,int *) ;
 int SaveCfgRw (int ,int *) ;
 int TAG_ROOT ;
 int Unlock (int ) ;
 int * XToBuf (int ,int) ;

void NiWriteConfig(NAT *n)
{

 if (n == ((void*)0))
 {
  return;
 }

 Lock(n->lock);
 {
  FOLDER *root = CfgCreateFolder(((void*)0), TAG_ROOT);
  BUF *b;


  b = XToBuf(n->AdminX, 0);
  CfgAddBuf(root, "AdminCert", b);
  FreeBuf(b);


  b = KToBuf(n->AdminK, 0, ((void*)0));
  CfgAddBuf(root, "AdminKey", b);
  FreeBuf(b);


  CfgAddByte(root, "HashedPassword", n->HashedPassword, sizeof(n->HashedPassword));
  CfgAddInt(root, "AdminPort", n->AdminPort);
  CfgAddBool(root, "Online", n->Online);


  NiWriteVhOption(n, root);


  if (n->ClientOption != ((void*)0) && n->ClientAuth != ((void*)0))
  {
   NiWriteClientData(n, root);
  }

  SaveCfgRw(n->CfgRw, root);
  CfgDeleteFolder(root);
 }
 Unlock(n->lock);
}
