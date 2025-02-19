
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* obj_next; } ;
typedef TYPE_1__ mcache_obj_t ;
struct TYPE_13__ {int mca_uflags; int * mca_uptr; } ;
typedef TYPE_2__ mcache_audit_t ;
typedef scalar_t__ mbuf_class_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int FALSE ;
 int MBUF_CLASS_COMPOSITE (scalar_t__) ;
 scalar_t__ MBUF_CLASS_VALID (scalar_t__) ;
 int MB_INUSE ;
 int MB_SCVALID ;
 scalar_t__ MC_MBUF ;
 int TRUE ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int m_cache (scalar_t__) ;
 int m_maxsize (scalar_t__) ;
 int mb_start ;
 int mbuf_mlock ;
 int mcache_buffer_log (TYPE_2__*,TYPE_1__*,int ,int *) ;
 TYPE_2__* mcl_audit_buf2mca (scalar_t__,TYPE_1__*) ;
 int mcl_audit_cluster (TYPE_2__*,TYPE_1__*,int ,int ,int ) ;
 int mcl_audit_mbuf (TYPE_2__*,TYPE_1__*,int ,int ) ;
 scalar_t__ mcltrace ;

__attribute__((used)) static void
mbuf_slab_audit(void *arg, mcache_obj_t *list, boolean_t alloc)
{
 mbuf_class_t class = (mbuf_class_t)arg;
 mcache_audit_t *mca;

 ASSERT(MBUF_CLASS_VALID(class) && !MBUF_CLASS_COMPOSITE(class));

 while (list != ((void*)0)) {
  lck_mtx_lock(mbuf_mlock);
  mca = mcl_audit_buf2mca(class, list);


  if (class == MC_MBUF) {
   mcl_audit_mbuf(mca, list, FALSE, alloc);
   ASSERT(mca->mca_uflags & MB_SCVALID);
  } else {
   mcl_audit_cluster(mca, list, m_maxsize(class),
       alloc, TRUE);
   ASSERT(!(mca->mca_uflags & MB_SCVALID));
  }

  if (mcltrace)
   mcache_buffer_log(mca, list, m_cache(class), &mb_start);

  if (alloc)
   mca->mca_uflags |= MB_INUSE;
  else
   mca->mca_uflags &= ~MB_INUSE;

  mca->mca_uptr = ((void*)0);
  lck_mtx_unlock(mbuf_mlock);

  list = list->obj_next;
 }
}
