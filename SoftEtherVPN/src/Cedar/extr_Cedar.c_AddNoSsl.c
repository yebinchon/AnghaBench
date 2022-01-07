
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_10__ {int NonSslList; } ;
struct TYPE_9__ {scalar_t__ Count; scalar_t__ EntryExpires; int IpAddress; } ;
typedef TYPE_1__ NON_SSL ;
typedef int IP ;
typedef TYPE_2__ CEDAR ;


 int Add (int ,TYPE_1__*) ;
 int Copy (int *,int *,int) ;
 int DeleteOldNoSsl (TYPE_2__*) ;
 int LockList (int ) ;
 scalar_t__ NON_SSL_ENTRY_EXPIRES ;
 scalar_t__ NON_SSL_MIN_COUNT ;
 TYPE_1__* SearchNoSslList (TYPE_2__*,int *) ;
 scalar_t__ Tick64 () ;
 int UnlockList (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

bool AddNoSsl(CEDAR *c, IP *ip)
{
 NON_SSL *n;
 bool ret = 1;

 if (c == ((void*)0) || ip == ((void*)0))
 {
  return 1;
 }

 LockList(c->NonSslList);
 {
  DeleteOldNoSsl(c);

  n = SearchNoSslList(c, ip);

  if (n == ((void*)0))
  {
   n = ZeroMalloc(sizeof(NON_SSL));
   Copy(&n->IpAddress, ip, sizeof(IP));
   n->Count = 0;

   Add(c->NonSslList, n);
  }

  n->EntryExpires = Tick64() + (UINT64)NON_SSL_ENTRY_EXPIRES;

  n->Count++;

  if (n->Count > NON_SSL_MIN_COUNT)
  {
   ret = 0;
  }
 }
 UnlockList(c->NonSslList);

 return ret;
}
