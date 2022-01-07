
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int64_t ;
struct TYPE_4__ {intptr_t mc_chunksize; int mc_align; int mc_bufsize; } ;
typedef TYPE_1__ mcache_t ;
struct TYPE_5__ {struct TYPE_5__* obj_next; } ;
typedef TYPE_2__ mcache_obj_t ;
typedef int boolean_t ;


 int IS_P2ALIGNED (void*,int ) ;
 int MCACHE_FREE_PATTERN ;
 size_t P2ROUNDUP (int ,int) ;
 int VERIFY (int) ;
 int mcache_audit_free_verify_set (int *,void*,int ,size_t) ;
 int mcache_set_pattern (int ,void*,size_t) ;

__attribute__((used)) static void
mcache_slab_audit(void *arg, mcache_obj_t *list, boolean_t alloc)
{
 mcache_t *cp = arg;
 size_t rsize = P2ROUNDUP(cp->mc_bufsize, sizeof (u_int64_t));
 void *base, **pbuf;

 while (list != ((void*)0)) {
  mcache_obj_t *next = list->obj_next;

  base = list;
  VERIFY(IS_P2ALIGNED(base, cp->mc_align));


  pbuf = (void **)((intptr_t)base - sizeof (void *));

  VERIFY(((intptr_t)base + rsize) <=
      ((intptr_t)*pbuf + cp->mc_chunksize));

  if (!alloc)
   mcache_set_pattern(MCACHE_FREE_PATTERN, base, rsize);
  else
   mcache_audit_free_verify_set(((void*)0), base, 0, rsize);

  list = list->obj_next = next;
 }
}
