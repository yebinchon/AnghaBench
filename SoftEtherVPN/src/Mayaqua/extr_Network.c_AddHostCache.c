
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int t ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {scalar_t__ Expires; int HostName; int IpAddress; } ;
typedef int LIST ;
typedef int IP ;
typedef TYPE_1__ HOSTCACHE ;


 int Add (int *,TYPE_1__*) ;
 int Copy (int *,int *,int) ;
 scalar_t__ Delete (int *,TYPE_1__*) ;
 scalar_t__ EXPIRES_HOSTNAME ;
 int Free (TYPE_1__*) ;
 int * HostCacheList ;
 int IsNetworkNameCacheEnabled () ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 TYPE_1__* Search (int *,TYPE_1__*) ;
 int StrCpy (int ,int,char*) ;
 scalar_t__ Tick64 () ;
 int UnlockList (int *) ;
 int Zero (TYPE_1__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void AddHostCache(IP *ip, char *hostname)
{

 if (ip == ((void*)0) || hostname == ((void*)0))
 {
  return;
 }
 if (IsNetworkNameCacheEnabled() == 0)
 {
  return;
 }

 LockList(HostCacheList);
 {
  HOSTCACHE t, *c;
  UINT i;
  LIST *o;

  Zero(&t, sizeof(t));
  Copy(&t.IpAddress, ip, sizeof(IP));

  c = Search(HostCacheList, &t);
  if (c == ((void*)0))
  {
   c = ZeroMalloc(sizeof(HOSTCACHE));
   Copy(&c->IpAddress, ip, sizeof(IP));
   Add(HostCacheList, c);
  }

  StrCpy(c->HostName, sizeof(c->HostName), hostname);
  c->Expires = Tick64() + (UINT64)EXPIRES_HOSTNAME;

  o = NewListFast(((void*)0));

  for (i = 0;i < LIST_NUM(HostCacheList);i++)
  {
   HOSTCACHE *c = LIST_DATA(HostCacheList, i);

   if (c->Expires <= Tick64())
   {
    Add(o, c);
   }
  }

  for (i = 0;i < LIST_NUM(o);i++)
  {
   HOSTCACHE *c = LIST_DATA(o, i);

   if (Delete(HostCacheList, c))
   {
    Free(c);
   }
  }

  ReleaseList(o);
 }
 UnlockList(HostCacheList);
}
