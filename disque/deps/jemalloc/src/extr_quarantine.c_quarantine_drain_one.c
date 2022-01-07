
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_4__ {size_t first; int lg_maxobjs; int curobjs; int curbytes; TYPE_2__* objs; } ;
typedef TYPE_1__ quarantine_t ;
struct TYPE_5__ {scalar_t__ usize; int ptr; } ;
typedef TYPE_2__ quarantine_obj_t ;


 int ZU (int) ;
 int assert (int) ;
 int config_prof ;
 int idalloctm (int *,int ,int *,int) ;
 scalar_t__ isalloc (int ,int ) ;

__attribute__((used)) static void
quarantine_drain_one(tsd_t *tsd, quarantine_t *quarantine)
{
 quarantine_obj_t *obj = &quarantine->objs[quarantine->first];
 assert(obj->usize == isalloc(obj->ptr, config_prof));
 idalloctm(tsd, obj->ptr, ((void*)0), 0);
 quarantine->curbytes -= obj->usize;
 quarantine->curobjs--;
 quarantine->first = (quarantine->first + 1) & ((ZU(1) <<
     quarantine->lg_maxobjs) - 1);
}
