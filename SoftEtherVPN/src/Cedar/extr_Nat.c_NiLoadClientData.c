
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ClientAuth; int ClientOption; } ;
typedef TYPE_1__ NAT ;
typedef int FOLDER ;


 int * CfgGetFolder (int *,char*) ;
 int CiLoadClientAuth (int *) ;
 int CiLoadClientOption (int *) ;

void NiLoadClientData(NAT *n, FOLDER *root)
{
 FOLDER *co, *ca;

 if (n == ((void*)0) || root == ((void*)0))
 {
  return;
 }

 co = CfgGetFolder(root, "VpnClientOption");
 ca = CfgGetFolder(root, "VpnClientAuth");
 if (co == ((void*)0) || ca == ((void*)0))
 {
  return;
 }

 n->ClientOption = CiLoadClientOption(co);
 n->ClientAuth = CiLoadClientAuth(ca);
}
