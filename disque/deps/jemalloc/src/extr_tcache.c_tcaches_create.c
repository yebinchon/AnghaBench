
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_5__ {int * tcache; struct TYPE_5__* next; } ;
typedef TYPE_1__ tcaches_t ;
typedef int tcache_t ;


 int MALLOCX_TCACHE_MAX ;
 int a0get () ;
 TYPE_1__* base_alloc (int) ;
 int * tcache_create (int *,int ) ;
 TYPE_1__* tcaches ;
 TYPE_1__* tcaches_avail ;
 int tcaches_past ;

bool
tcaches_create(tsd_t *tsd, unsigned *r_ind)
{
 tcache_t *tcache;
 tcaches_t *elm;

 if (tcaches == ((void*)0)) {
  tcaches = base_alloc(sizeof(tcache_t *) *
      (MALLOCX_TCACHE_MAX+1));
  if (tcaches == ((void*)0))
   return (1);
 }

 if (tcaches_avail == ((void*)0) && tcaches_past > MALLOCX_TCACHE_MAX)
  return (1);
 tcache = tcache_create(tsd, a0get());
 if (tcache == ((void*)0))
  return (1);

 if (tcaches_avail != ((void*)0)) {
  elm = tcaches_avail;
  tcaches_avail = tcaches_avail->next;
  elm->tcache = tcache;
  *r_ind = elm - tcaches;
 } else {
  elm = &tcaches[tcaches_past];
  elm->tcache = tcache;
  *r_ind = tcaches_past;
  tcaches_past++;
 }

 return (0);
}
