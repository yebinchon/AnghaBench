
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_14__ {int is_compatible_bit; int root_cert; } ;
struct TYPE_13__ {TYPE_1__* Server; } ;
struct TYPE_12__ {int Flag1; int * Key; TYPE_6__* Cert; } ;
struct TYPE_11__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_KEY_PAIR ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ALog (TYPE_3__*,int *,char*) ;
 int CheckXandK (TYPE_6__*,int *) ;
 int DownloadAndSaveIntermediateCertificatesIfNecessary (TYPE_6__*) ;
 int ERR_NOT_RSA_1024 ;
 int ERR_NO_ERROR ;
 int ERR_PROTOCOL_ERROR ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int SERVER_ADMIN_ONLY ;
 int SetCedarCert (int *,TYPE_6__*,int *) ;

UINT StSetServerCert(ADMIN *a, RPC_KEY_PAIR *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;

 SERVER_ADMIN_ONLY;

 if (t->Cert == ((void*)0) || t->Key == ((void*)0))
 {
  return ERR_PROTOCOL_ERROR;
 }

 if (t->Cert->is_compatible_bit == 0)
 {
  return ERR_NOT_RSA_1024;
 }

 if (CheckXandK(t->Cert, t->Key) == 0)
 {
  return ERR_PROTOCOL_ERROR;
 }

 t->Flag1 = 1;
 if (t->Cert->root_cert == 0)
 {
  if (DownloadAndSaveIntermediateCertificatesIfNecessary(t->Cert) == 0)
  {
   t->Flag1 = 0;
  }
 }

 SetCedarCert(c, t->Cert, t->Key);

 ALog(a, ((void*)0), "LA_SET_SERVER_CERT");

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
