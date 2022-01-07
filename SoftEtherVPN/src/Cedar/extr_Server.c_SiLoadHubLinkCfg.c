
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int Cedar; } ;
struct TYPE_9__ {int Offline; int ServerCert; void* CheckServerCert; } ;
typedef int POLICY ;
typedef TYPE_1__ LINK ;
typedef TYPE_2__ HUB ;
typedef int FOLDER ;
typedef int CLIENT_OPTION ;
typedef int CLIENT_AUTH ;
typedef int BUF ;


 int BufToX (int *,int) ;
 void* CfgGetBool (int *,char*) ;
 int * CfgGetBuf (int *,char*) ;
 int * CfgGetFolder (int *,char*) ;
 int CiFreeClientAuth (int *) ;
 int * CiLoadClientAuth (int *) ;
 int * CiLoadClientOption (int *) ;
 int Free (int *) ;
 int FreeBuf (int *) ;
 TYPE_1__* NewLink (int ,TYPE_2__*,int *,int *,int *) ;
 int ReleaseLink (TYPE_1__*) ;
 int SetLinkOffline (TYPE_1__*) ;
 int SetLinkOnline (TYPE_1__*) ;
 int SiLoadPolicyCfg (int *,int *) ;

void SiLoadHubLinkCfg(FOLDER *f, HUB *h)
{
 bool online;
 CLIENT_OPTION *o;
 CLIENT_AUTH *a;
 FOLDER *pf;
 POLICY p;
 LINK *k;

 if (f == ((void*)0) || h == ((void*)0))
 {
  return;
 }

 pf = CfgGetFolder(f, "Policy");
 if (pf == ((void*)0))
 {
  return;
 }

 SiLoadPolicyCfg(&p, pf);

 online = CfgGetBool(f, "Online");

 o = CiLoadClientOption(CfgGetFolder(f, "ClientOption"));
 a = CiLoadClientAuth(CfgGetFolder(f, "ClientAuth"));
 if (o == ((void*)0) || a == ((void*)0))
 {
  Free(o);
  CiFreeClientAuth(a);
  return;
 }

 k = NewLink(h->Cedar, h, o, a, &p);
 if (k != ((void*)0))
 {
  BUF *b;
  k->CheckServerCert = CfgGetBool(f, "CheckServerCert");
  b = CfgGetBuf(f, "ServerCert");
  if (b != ((void*)0))
  {
   k->ServerCert = BufToX(b, 0);
   FreeBuf(b);
  }

  if (online)
  {
   k->Offline = 1;
   SetLinkOnline(k);
  }
  else
  {
   k->Offline = 0;
   SetLinkOffline(k);
  }
  ReleaseLink(k);
 }

 Free(o);
 CiFreeClientAuth(a);
}
