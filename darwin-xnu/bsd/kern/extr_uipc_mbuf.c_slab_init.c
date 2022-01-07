
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {unsigned int sl_len; int sl_refcnt; int sl_chunks; void* sl_head; void* sl_base; int sl_flags; int sl_class; } ;
typedef TYPE_1__ mcl_slab_t ;
typedef int mbuf_class_t ;


 int slab_detach (TYPE_1__*) ;

__attribute__((used)) static void
slab_init(mcl_slab_t *sp, mbuf_class_t class, u_int32_t flags,
    void *base, void *head, unsigned int len, int refcnt, int chunks)
{
 sp->sl_class = class;
 sp->sl_flags = flags;
 sp->sl_base = base;
 sp->sl_head = head;
 sp->sl_len = len;
 sp->sl_refcnt = refcnt;
 sp->sl_chunks = chunks;
 slab_detach(sp);
}
