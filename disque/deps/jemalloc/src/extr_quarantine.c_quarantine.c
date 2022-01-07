
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_7__ {size_t curbytes; int curobjs; int lg_maxobjs; int first; TYPE_2__* objs; } ;
typedef TYPE_1__ quarantine_t ;
struct TYPE_8__ {size_t usize; void* ptr; } ;
typedef TYPE_2__ quarantine_obj_t ;


 size_t SMALL_MAXCLASS ;
 int ZU (int) ;
 int arena_quarantine_junk_small (void*,size_t) ;
 int assert (int) ;
 int cassert (scalar_t__) ;
 scalar_t__ config_fill ;
 int config_prof ;
 int config_valgrind ;
 int idalloctm (int *,void*,int *,int) ;
 int in_valgrind ;
 size_t isalloc (void*,int ) ;
 scalar_t__ likely (int) ;
 int memset (void*,int,size_t) ;
 int opt_junk_free ;
 size_t opt_quarantine ;
 int quarantine_drain (int *,TYPE_1__*,size_t) ;
 TYPE_1__* quarantine_grow (int *,TYPE_1__*) ;
 TYPE_1__* tsd_quarantine_get (int *) ;
 scalar_t__ unlikely (int ) ;

void
quarantine(tsd_t *tsd, void *ptr)
{
 quarantine_t *quarantine;
 size_t usize = isalloc(ptr, config_prof);

 cassert(config_fill);
 assert(opt_quarantine);

 if ((quarantine = tsd_quarantine_get(tsd)) == ((void*)0)) {
  idalloctm(tsd, ptr, ((void*)0), 0);
  return;
 }




 if (quarantine->curbytes + usize > opt_quarantine) {
  size_t upper_bound = (opt_quarantine >= usize) ? opt_quarantine
      - usize : 0;
  quarantine_drain(tsd, quarantine, upper_bound);
 }

 if (quarantine->curobjs == (ZU(1) << quarantine->lg_maxobjs))
  quarantine = quarantine_grow(tsd, quarantine);

 assert(quarantine->curobjs < (ZU(1) << quarantine->lg_maxobjs));

 if (quarantine->curbytes + usize <= opt_quarantine) {
  size_t offset = (quarantine->first + quarantine->curobjs) &
      ((ZU(1) << quarantine->lg_maxobjs) - 1);
  quarantine_obj_t *obj = &quarantine->objs[offset];
  obj->ptr = ptr;
  obj->usize = usize;
  quarantine->curbytes += usize;
  quarantine->curobjs++;
  if (config_fill && unlikely(opt_junk_free)) {




   if ((!config_valgrind || likely(!in_valgrind))
       && usize <= SMALL_MAXCLASS)
    arena_quarantine_junk_small(ptr, usize);
   else
    memset(ptr, 0x5a, usize);
  }
 } else {
  assert(quarantine->curbytes == 0);
  idalloctm(tsd, ptr, ((void*)0), 0);
 }
}
