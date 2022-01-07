
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X ;
typedef int UINT ;
struct TYPE_10__ {TYPE_1__* Server; } ;
struct TYPE_9__ {int StrValue; } ;
struct TYPE_8__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_TEST ;
typedef int K ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ALog (TYPE_3__*,int *,char*,int ) ;
 int ERR_NO_ERROR ;
 int FreeK (int *) ;
 int FreeX (int *) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int SERVER_ADMIN_ONLY ;
 int SetCedarCert (int *,int *,int *) ;
 int SiGenerateDefaultCertEx (int **,int **,int ) ;

UINT StRegenerateServerCert(ADMIN *a, RPC_TEST *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 X *x;
 K *k;

 SERVER_ADMIN_ONLY;

 SiGenerateDefaultCertEx(&x, &k, t->StrValue);

 SetCedarCert(c, x, k);

 ALog(a, ((void*)0), "LA_REGENERATE_SERVER_CERT", t->StrValue);

 IncrementServerConfigRevision(s);

 FreeX(x);
 FreeK(k);

 return ERR_NO_ERROR;
}
