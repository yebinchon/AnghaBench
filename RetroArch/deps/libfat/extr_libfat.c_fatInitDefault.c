
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_CACHE_PAGES ;
 int fatInit (int ,int) ;

bool fatInitDefault (void)
{
 return fatInit (DEFAULT_CACHE_PAGES, 1);
}
