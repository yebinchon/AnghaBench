
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* obj_next; } ;
typedef TYPE_1__ mcache_obj_t ;
typedef int mcache_audit_t ;
typedef scalar_t__ boolean_t ;


 int MCACHE_FREE_PATTERN ;
 int mcache_audit_free_verify_set (int *,void*,int ,size_t) ;
 int mcache_set_pattern (int ,void*,size_t) ;
 int mcl_audit_verify_nextptr (TYPE_1__*,int *) ;
 scalar_t__ mclverify ;

__attribute__((used)) static void
mcl_audit_cluster(mcache_audit_t *mca, void *addr, size_t size, boolean_t alloc,
    boolean_t save_next)
{
 mcache_obj_t *next = ((mcache_obj_t *)addr)->obj_next;

 if (!alloc) {
  if (mclverify) {
   mcache_set_pattern(MCACHE_FREE_PATTERN, addr, size);
  }
  if (save_next) {
   mcl_audit_verify_nextptr(next, mca);
   ((mcache_obj_t *)addr)->obj_next = next;
  }
 } else if (mclverify) {

  mcl_audit_verify_nextptr(next, mca);
  mcache_audit_free_verify_set(mca, addr, 0, size);
 }
}
