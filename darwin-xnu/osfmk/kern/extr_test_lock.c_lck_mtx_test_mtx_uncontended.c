
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int erase_all_test_mtx_stats () ;
 int get_test_mtx_stats_string (char*,int) ;
 int lck_mtx_test_mtx_lock_uncontended (int) ;
 int lck_mtx_test_mtx_spin_uncontended (int) ;

int
lck_mtx_test_mtx_uncontended(
 int iter,
 char *buffer,
 int size)
{
 erase_all_test_mtx_stats();
 lck_mtx_test_mtx_lock_uncontended(iter);
 lck_mtx_test_mtx_spin_uncontended(iter);

 return get_test_mtx_stats_string(buffer,size);
}
