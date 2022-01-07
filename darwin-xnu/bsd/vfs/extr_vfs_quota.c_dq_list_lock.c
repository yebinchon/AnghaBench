
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dq_list_lock_cnt ;
 int lck_mtx_lock (int ) ;
 int quota_list_mtx_lock ;

__attribute__((used)) static int
dq_list_lock(void)
{
 lck_mtx_lock(quota_list_mtx_lock);
 return ++dq_list_lock_cnt;
}
