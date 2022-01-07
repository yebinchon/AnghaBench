
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acquire ;
 int init_test_mtx_stats () ;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int lck_mtx_init (int *,int *,int *) ;
 scalar_t__ os_atomic_cmpxchg (int*,int ,int,int ) ;
 int os_atomic_inc (int*,int ) ;
 int os_atomic_load (int*,int ) ;
 int relaxed ;
 int release ;
 int test_mtx ;
 int test_mtx_attr ;
 int test_mtx_grp ;
 int test_mtx_grp_attr ;

void
lck_mtx_test_init(void)
{
 static int first = 0;





 if (os_atomic_load(&first, acquire) >= 2)
  return;

 if (os_atomic_cmpxchg(&first, 0, 1, relaxed)){
  lck_grp_attr_setdefault(&test_mtx_grp_attr);
  lck_grp_init(&test_mtx_grp, "testlck_mtx", &test_mtx_grp_attr);
  lck_attr_setdefault(&test_mtx_attr);
  lck_mtx_init(&test_mtx, &test_mtx_grp, &test_mtx_attr);

  init_test_mtx_stats();

  os_atomic_inc(&first, release);
 }

 while(os_atomic_load(&first, acquire) < 2);
}
