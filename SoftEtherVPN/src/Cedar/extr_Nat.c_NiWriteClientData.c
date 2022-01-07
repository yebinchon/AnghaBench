
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ClientAuth; int * ClientOption; } ;
typedef TYPE_1__ NAT ;
typedef int FOLDER ;


 int CfgCreateFolder (int *,char*) ;
 int CiWriteClientAuth (int ,int *) ;
 int CiWriteClientOption (int ,int *) ;

void NiWriteClientData(NAT *n, FOLDER *root)
{

 if (n == ((void*)0) || root == ((void*)0) || n->ClientOption == ((void*)0) || n->ClientAuth == ((void*)0))
 {
  return;
 }

 CiWriteClientOption(CfgCreateFolder(root, "VpnClientOption"), n->ClientOption);
 CiWriteClientAuth(CfgCreateFolder(root, "VpnClientAuth"), n->ClientAuth);
}
