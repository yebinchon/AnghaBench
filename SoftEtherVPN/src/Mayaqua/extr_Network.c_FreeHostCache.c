
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int HOSTCACHE ;


 int Free (int *) ;
 int * HostCacheList ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void FreeHostCache()
{
 UINT i;

 for (i = 0;i < LIST_NUM(HostCacheList);i++)
 {
  HOSTCACHE *c = LIST_DATA(HostCacheList, i);

  Free(c);
 }

 ReleaseList(HostCacheList);
 HostCacheList = ((void*)0);
}
