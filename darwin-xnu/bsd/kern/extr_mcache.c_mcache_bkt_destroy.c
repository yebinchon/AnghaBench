
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int mc_flags; scalar_t__ mc_purge_cnt; int mc_private; int (* mc_slab_free ) (int ,TYPE_2__*,int) ;int mc_name; } ;
typedef TYPE_1__ mcache_t ;
struct TYPE_11__ {struct TYPE_11__* obj_next; } ;
typedef TYPE_2__ mcache_obj_t ;
struct TYPE_12__ {int bt_cache; } ;
typedef TYPE_3__ mcache_bkttype_t ;
struct TYPE_13__ {TYPE_2__** bkt_obj; } ;
typedef TYPE_4__ mcache_bkt_t ;


 int MCF_DEBUG ;
 int mcache_free (int ,TYPE_4__*) ;
 int panic (char*,int ,void*,void*,int,int) ;
 int stub1 (int ,TYPE_2__*,int) ;

__attribute__((used)) static void
mcache_bkt_destroy(mcache_t *cp, mcache_bkttype_t *btp, mcache_bkt_t *bkt,
    int nobjs)
{
 if (nobjs > 0) {
  mcache_obj_t *top = bkt->bkt_obj[nobjs - 1];

  if (cp->mc_flags & MCF_DEBUG) {
   mcache_obj_t *o = top;
   int cnt = 0;






   while (o != ((void*)0)) {
    o = o->obj_next;
    ++cnt;
   }
   if (cnt != nobjs) {
    panic("mcache_bkt_destroy: %s cp %p corrupted "
        "list in bkt %p (nobjs %d actual %d)\n",
        cp->mc_name, (void *)cp, (void *)bkt,
        nobjs, cnt);
   }
  }


  (*cp->mc_slab_free)(cp->mc_private, top,
      (cp->mc_flags & MCF_DEBUG) || cp->mc_purge_cnt);
 }
 mcache_free(btp->bt_cache, bkt);
}
