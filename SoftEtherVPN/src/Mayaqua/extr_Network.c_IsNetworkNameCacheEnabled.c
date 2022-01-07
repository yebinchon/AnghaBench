
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_cache ;

bool IsNetworkNameCacheEnabled()
{
 return !disable_cache;
}
