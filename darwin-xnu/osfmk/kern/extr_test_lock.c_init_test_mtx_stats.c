
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lck_mtx_test_stats_elem {int dummy; } ;
struct TYPE_3__ {int lock; int min; } ;


 int TEST_MTX_MAX_STATS ;
 int TRUE ;
 int atomic_store (int *,int ) ;
 int enabled ;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 TYPE_1__* lck_mtx_test_stats ;
 int lck_spin_init (int *,int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int test_mtx_stats_attr ;
 int test_mtx_stats_grp ;
 int test_mtx_stats_grp_attr ;

__attribute__((used)) static void
init_test_mtx_stats(void)
{
 int i;

 lck_grp_attr_setdefault(&test_mtx_stats_grp_attr);
 lck_grp_init(&test_mtx_stats_grp, "testlck_stats_mtx", &test_mtx_stats_grp_attr);
 lck_attr_setdefault(&test_mtx_stats_attr);

 atomic_store(&enabled, TRUE);
 for(i = 0; i < TEST_MTX_MAX_STATS; i++){
  memset(&lck_mtx_test_stats[i], 0 , sizeof(struct lck_mtx_test_stats_elem));
  lck_mtx_test_stats[i].min = ~0;
  lck_spin_init(&lck_mtx_test_stats[i].lock, &test_mtx_stats_grp, &test_mtx_stats_attr);
 }
}
