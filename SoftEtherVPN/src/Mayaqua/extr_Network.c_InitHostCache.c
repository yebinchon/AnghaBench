
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CompareHostCache ;
 int HostCacheList ;
 int NewList (int ) ;

void InitHostCache()
{
 HostCacheList = NewList(CompareHostCache);
}
