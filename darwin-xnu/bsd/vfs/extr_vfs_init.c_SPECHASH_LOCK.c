
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_mtx_lock (int ) ;
 int spechash_mtx_lock ;

void
SPECHASH_LOCK(void)
{
 lck_mtx_lock(spechash_mtx_lock);
}
