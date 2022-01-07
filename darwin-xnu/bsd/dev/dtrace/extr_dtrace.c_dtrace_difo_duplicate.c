
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dtrace_vstate_t ;
typedef int dtrace_difv_t ;
struct TYPE_6__ {scalar_t__ dtdo_refcnt; int dtdo_len; size_t dtdo_strlen; int dtdo_intlen; int dtdo_varlen; int * dtdo_vartab; int * dtdo_inttab; int * dtdo_strtab; int * dtdo_buf; } ;
typedef TYPE_1__ dtrace_difo_t ;
typedef int dif_instr_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int bcopy (int *,int *,size_t) ;
 int dtrace_difo_init (TYPE_1__*,int *) ;
 void* kmem_alloc (size_t,int ) ;
 TYPE_1__* kmem_zalloc (int,int ) ;

__attribute__((used)) static dtrace_difo_t *
dtrace_difo_duplicate(dtrace_difo_t *dp, dtrace_vstate_t *vstate)
{
 dtrace_difo_t *new;
 size_t sz;

 ASSERT(dp->dtdo_buf != ((void*)0));
 ASSERT(dp->dtdo_refcnt != 0);

 new = kmem_zalloc(sizeof (dtrace_difo_t), KM_SLEEP);

 ASSERT(dp->dtdo_buf != ((void*)0));
 sz = dp->dtdo_len * sizeof (dif_instr_t);
 new->dtdo_buf = kmem_alloc(sz, KM_SLEEP);
 bcopy(dp->dtdo_buf, new->dtdo_buf, sz);
 new->dtdo_len = dp->dtdo_len;

 if (dp->dtdo_strtab != ((void*)0)) {
  ASSERT(dp->dtdo_strlen != 0);
  new->dtdo_strtab = kmem_alloc(dp->dtdo_strlen, KM_SLEEP);
  bcopy(dp->dtdo_strtab, new->dtdo_strtab, dp->dtdo_strlen);
  new->dtdo_strlen = dp->dtdo_strlen;
 }

 if (dp->dtdo_inttab != ((void*)0)) {
  ASSERT(dp->dtdo_intlen != 0);
  sz = dp->dtdo_intlen * sizeof (uint64_t);
  new->dtdo_inttab = kmem_alloc(sz, KM_SLEEP);
  bcopy(dp->dtdo_inttab, new->dtdo_inttab, sz);
  new->dtdo_intlen = dp->dtdo_intlen;
 }

 if (dp->dtdo_vartab != ((void*)0)) {
  ASSERT(dp->dtdo_varlen != 0);
  sz = dp->dtdo_varlen * sizeof (dtrace_difv_t);
  new->dtdo_vartab = kmem_alloc(sz, KM_SLEEP);
  bcopy(dp->dtdo_vartab, new->dtdo_vartab, sz);
  new->dtdo_varlen = dp->dtdo_varlen;
 }

 dtrace_difo_init(new, vstate);
 return (new);
}
