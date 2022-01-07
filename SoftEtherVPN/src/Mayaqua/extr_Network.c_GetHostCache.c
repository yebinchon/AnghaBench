
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int t ;
typedef int UINT ;
struct TYPE_5__ {char* HostName; int IpAddress; } ;
typedef int IP ;
typedef TYPE_1__ HOSTCACHE ;


 int Copy (int *,int *,int) ;
 int HostCacheList ;
 int IsEmptyStr (char*) ;
 int LockList (int ) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int StrCpy (char*,int ,char*) ;
 int UnlockList (int ) ;
 int Zero (TYPE_1__*,int) ;

bool GetHostCache(char *hostname, UINT size, IP *ip)
{
 bool ret;

 if (hostname == ((void*)0) || ip == ((void*)0))
 {
  return 0;
 }

 ret = 0;

 LockList(HostCacheList);
 {
  HOSTCACHE t, *c;
  Zero(&t, sizeof(t));
  Copy(&t.IpAddress, ip, sizeof(IP));

  c = Search(HostCacheList, &t);
  if (c != ((void*)0))
  {
   if (IsEmptyStr(c->HostName) == 0)
   {
    ret = 1;
    StrCpy(hostname, size, c->HostName);
   }
   else
   {
    ret = 1;
    StrCpy(hostname, size, "");
   }
  }
 }
 UnlockList(HostCacheList);

 return ret;
}
