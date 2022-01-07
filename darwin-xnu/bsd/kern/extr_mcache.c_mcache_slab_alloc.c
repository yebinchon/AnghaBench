
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int32_t ;
struct TYPE_4__ {intptr_t mc_bufsize; int mc_flags; int mc_align; intptr_t mc_chunksize; int mc_slab_zone; } ;
typedef TYPE_1__ mcache_t ;
struct TYPE_5__ {struct TYPE_5__* obj_next; } ;
typedef TYPE_2__ mcache_obj_t ;


 int IS_P2ALIGNED (void*,int) ;
 int MCACHE_FREE_PATTERN ;
 int MCF_DEBUG ;
 size_t P2ROUNDUP (intptr_t,int) ;
 int VERIFY (int) ;
 int mcache_set_pattern (int ,void*,size_t) ;
 void* zalloc (int ) ;

__attribute__((used)) static unsigned int
mcache_slab_alloc(void *arg, mcache_obj_t ***plist, unsigned int num,
    int wait)
{
#pragma unused(wait)
 mcache_t *cp = arg;
 unsigned int need = num;
 size_t rsize = P2ROUNDUP(cp->mc_bufsize, sizeof (u_int64_t));
 u_int32_t flags = cp->mc_flags;
 void *buf, *base, **pbuf;
 mcache_obj_t **list = *plist;

 *list = ((void*)0);

 for (;;) {
  buf = zalloc(cp->mc_slab_zone);
  if (buf == ((void*)0))
   break;


  base = (void *)P2ROUNDUP((intptr_t)buf + sizeof (u_int64_t),
      cp->mc_align);





  pbuf = (void **)((intptr_t)base - sizeof (void *));
  *pbuf = buf;

  VERIFY (((intptr_t)base + cp->mc_bufsize) <=
      ((intptr_t)buf + cp->mc_chunksize));
  if (flags & MCF_DEBUG) {
   VERIFY(((intptr_t)base + rsize) <=
       ((intptr_t)buf + cp->mc_chunksize));
   mcache_set_pattern(MCACHE_FREE_PATTERN, base, rsize);
  }

  VERIFY(IS_P2ALIGNED(base, cp->mc_align));
  *list = (mcache_obj_t *)base;

  (*list)->obj_next = ((void*)0);
  list = *plist = &(*list)->obj_next;


  if (--need == 0)
   break;
 }

 return (num - need);
}
