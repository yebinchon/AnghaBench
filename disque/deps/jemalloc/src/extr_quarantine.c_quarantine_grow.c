
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_8__ {int lg_maxobjs; size_t curobjs; size_t first; int * objs; int curbytes; } ;
typedef TYPE_1__ quarantine_t ;
typedef int quarantine_obj_t ;


 size_t ZU (int) ;
 int idalloctm (int *,TYPE_1__*,int ,int) ;
 int memcpy (int *,int *,size_t) ;
 int quarantine_drain_one (int *,TYPE_1__*) ;
 TYPE_1__* quarantine_init (int *,int) ;
 int tcache_get (int *,int) ;
 int tsd_quarantine_set (int *,TYPE_1__*) ;

__attribute__((used)) static quarantine_t *
quarantine_grow(tsd_t *tsd, quarantine_t *quarantine)
{
 quarantine_t *ret;

 ret = quarantine_init(tsd, quarantine->lg_maxobjs + 1);
 if (ret == ((void*)0)) {
  quarantine_drain_one(tsd, quarantine);
  return (quarantine);
 }

 ret->curbytes = quarantine->curbytes;
 ret->curobjs = quarantine->curobjs;
 if (quarantine->first + quarantine->curobjs <= (ZU(1) <<
     quarantine->lg_maxobjs)) {

  memcpy(ret->objs, &quarantine->objs[quarantine->first],
      quarantine->curobjs * sizeof(quarantine_obj_t));
 } else {

  size_t ncopy_a = (ZU(1) << quarantine->lg_maxobjs) -
      quarantine->first;
  size_t ncopy_b = quarantine->curobjs - ncopy_a;

  memcpy(ret->objs, &quarantine->objs[quarantine->first], ncopy_a
      * sizeof(quarantine_obj_t));
  memcpy(&ret->objs[ncopy_a], quarantine->objs, ncopy_b *
      sizeof(quarantine_obj_t));
 }
 idalloctm(tsd, quarantine, tcache_get(tsd, 0), 1);

 tsd_quarantine_set(tsd, ret);
 return (ret);
}
