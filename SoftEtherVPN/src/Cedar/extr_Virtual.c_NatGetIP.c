
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {void* ref; int Ip; scalar_t__ Ok; int Hostname; } ;
struct TYPE_8__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int THREAD ;
typedef TYPE_2__ NAT_DNS_QUERY ;
typedef int IP ;


 int AddRef (void*) ;
 int Copy (int *,int *,int) ;
 int Free (TYPE_2__*) ;
 int FreeToken (TYPE_1__*) ;
 int GetIP (int *,char*) ;
 int NAT_DNS_QUERY_TIMEOUT ;
 int NatGetIPThread ;
 void* NewRef () ;
 int * NewThread (int ,TYPE_2__*) ;
 TYPE_1__* ParseToken (char*,char*) ;
 scalar_t__ Release (void*) ;
 int ReleaseThread (int *) ;
 int StrCpy (int ,int,char*) ;
 int WaitThread (int *,int ) ;
 TYPE_2__* ZeroMalloc (int) ;

bool NatGetIP(IP *ip, char *hostname)
{
 TOKEN_LIST *t;
 bool ret = 0;

 if (ip == ((void*)0) || hostname == ((void*)0))
 {
  return 0;
 }

 t = ParseToken(hostname, ".");
 if (t == ((void*)0))
 {
  return 0;
 }
 if (t->NumTokens == 0)
 {
  FreeToken(t);
  return 0;
 }

 if (t->NumTokens == 1)
 {
  ret = GetIP(ip, hostname);
 }
 else
 {
  char *hostname2 = t->Token[0];
  NAT_DNS_QUERY *q1, *q2;
  THREAD *t1, *t2;

  q1 = ZeroMalloc(sizeof(NAT_DNS_QUERY));
  q2 = ZeroMalloc(sizeof(NAT_DNS_QUERY));
  q1->ref = NewRef();
  q2->ref = NewRef();
  AddRef(q1->ref);
  AddRef(q2->ref);
  StrCpy(q1->Hostname, sizeof(q1->Hostname), hostname);
  StrCpy(q2->Hostname, sizeof(q2->Hostname), hostname2);

  t1 = NewThread(NatGetIPThread, q1);
  t2 = NewThread(NatGetIPThread, q2);

  WaitThread(t1, NAT_DNS_QUERY_TIMEOUT);

  if (q1->Ok)
  {
   ret = 1;
   Copy(ip, &q1->Ip, sizeof(IP));
  }
  else
  {
   WaitThread(t2, NAT_DNS_QUERY_TIMEOUT);
   if (q1->Ok)
   {
    ret = 1;
    Copy(ip, &q1->Ip, sizeof(IP));
   }
   else if (q2->Ok)
   {
    ret = 1;
    Copy(ip, &q2->Ip, sizeof(IP));
   }
  }

  ReleaseThread(t1);
  ReleaseThread(t2);

  if (Release(q1->ref) == 0)
  {
   Free(q1);
  }
  if (Release(q2->ref) == 0)
  {
   Free(q2);
  }
 }

 FreeToken(t);

 return ret;
}
