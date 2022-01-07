
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ tcaches_t ;


 TYPE_1__* tcaches ;
 TYPE_1__* tcaches_avail ;
 int tcaches_elm_flush (int *,TYPE_1__*) ;

void
tcaches_destroy(tsd_t *tsd, unsigned ind)
{
 tcaches_t *elm = &tcaches[ind];
 tcaches_elm_flush(tsd, elm);
 elm->next = tcaches_avail;
 tcaches_avail = elm;
}
