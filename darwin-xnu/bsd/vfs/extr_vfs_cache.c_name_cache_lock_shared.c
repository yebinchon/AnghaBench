
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_rw_lock_shared (int ) ;
 int namecache_rw_lock ;

void
name_cache_lock_shared(void)
{
 lck_rw_lock_shared(namecache_rw_lock);
}
