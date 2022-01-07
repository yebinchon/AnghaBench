
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int atomic_store (int *,int ) ;
 int enabled ;

__attribute__((used)) static void
disable_all_test_mtx_stats(void)
{
 atomic_store(&enabled, FALSE);
}
