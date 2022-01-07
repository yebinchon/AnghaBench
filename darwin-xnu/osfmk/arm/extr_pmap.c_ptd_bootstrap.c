
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pt_desc_t ;


 int FALSE ;
 int ptd_free_count ;
 int * ptd_free_list ;
 int ptd_free_list_lock ;
 int ptd_preboot ;
 int simple_lock_init (int *,int ) ;

__attribute__((used)) static void
ptd_bootstrap(
 pt_desc_t *ptdp,
 unsigned int ptd_cnt)
{
 simple_lock_init(&ptd_free_list_lock, 0);
 while (ptd_cnt != 0) {
  (*(void **)ptdp) = (void *)ptd_free_list;
  ptd_free_list = ptdp;
  ptdp++;
  ptd_cnt--;
  ptd_free_count++;
 }
 ptd_preboot = FALSE;
}
