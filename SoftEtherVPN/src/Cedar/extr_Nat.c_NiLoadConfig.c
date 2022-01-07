
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int AdminK; int AdminX; int Online; int AdminPort; int HashedPassword; } ;
typedef TYPE_1__ NAT ;
typedef int FOLDER ;
typedef int BUF ;


 int BufToK (int *,int,int,int *) ;
 int BufToX (int *,int) ;
 int CfgGetBool (int *,char*) ;
 int * CfgGetBuf (int *,char*) ;
 int CfgGetByte (int *,char*,int ,int) ;
 int * CfgGetFolder (int *,char*) ;
 int CfgGetInt (int *,char*) ;
 int FreeBuf (int *) ;
 int NiLoadClientData (TYPE_1__*,int *) ;
 int NiLoadVhOption (TYPE_1__*,int *) ;

bool NiLoadConfig(NAT *n, FOLDER *root)
{
 FOLDER *host;
 BUF *b;

 if (n == ((void*)0) || root == ((void*)0))
 {
  return 0;
 }

 host = CfgGetFolder(root, "VirtualHost");
 if (host == ((void*)0))
 {
  return 0;
 }

 CfgGetByte(root, "HashedPassword", n->HashedPassword, sizeof(n->HashedPassword));
 n->AdminPort = CfgGetInt(root, "AdminPort");
 n->Online = CfgGetBool(root, "Online");

 b = CfgGetBuf(root, "AdminCert");
 if (b != ((void*)0))
 {
  n->AdminX = BufToX(b, 0);
  FreeBuf(b);
 }

 b = CfgGetBuf(root, "AdminKey");
 if (b != ((void*)0))
 {
  n->AdminK = BufToK(b, 1, 0, ((void*)0));
  FreeBuf(b);
 }

 NiLoadVhOption(n, root);

 NiLoadClientData(n, root);

 return 1;
}
