
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_14__ {struct TYPE_14__* next_in_die; int ** caches; TYPE_2__* die; struct TYPE_14__* next_in_core; TYPE_4__* core; } ;
typedef TYPE_1__ x86_lcpu_t ;
struct TYPE_15__ {TYPE_1__* lcpus; } ;
typedef TYPE_2__ x86_die_t ;
struct TYPE_16__ {size_t level; int maxcpus; struct TYPE_16__* next; } ;
typedef TYPE_3__ x86_cpu_cache_t ;
struct TYPE_17__ {TYPE_1__* lcpus; } ;
typedef TYPE_4__ x86_core_t ;
typedef size_t uint32_t ;
typedef int boolean_t ;
struct TYPE_13__ {size_t LLCDepth; } ;


 int FALSE ;
 int TRUE ;
 int assert (int ) ;
 int mp_safe_spin_lock (int *) ;
 int simple_unlock (int *) ;
 TYPE_12__ topoParms ;
 int x86_cache_add_lcpu (TYPE_3__*,TYPE_1__*) ;
 int x86_cache_free (TYPE_3__*) ;
 TYPE_3__* x86_cache_list () ;
 TYPE_3__* x86_match_cache (int *,TYPE_3__*) ;
 int x86_topo_lock ;

__attribute__((used)) static void
x86_lcpu_add_caches(x86_lcpu_t *lcpu)
{
    x86_cpu_cache_t *list;
    x86_cpu_cache_t *cur;
    x86_cpu_cache_t *match;
    x86_die_t *die;
    x86_core_t *core;
    x86_lcpu_t *cur_lcpu;
    uint32_t level;
    boolean_t found = FALSE;

    assert(lcpu != ((void*)0));




    list = x86_cache_list();

    mp_safe_spin_lock(&x86_topo_lock);

    while (list != ((void*)0)) {



 cur = list;
 list = cur->next;
 cur->next = ((void*)0);
 level = cur->level - 1;





 if (cur->maxcpus == 1) {
     x86_cache_add_lcpu(cur, lcpu);
     continue;
 }






 if (lcpu->caches[level] != ((void*)0)) {
     x86_cache_free(cur);
     continue;
 }
 if (level < topoParms.LLCDepth) {



     core = lcpu->core;
     cur_lcpu = core->lcpus;
     while (cur_lcpu != ((void*)0)) {



  if (cur_lcpu == lcpu) {
      cur_lcpu = cur_lcpu->next_in_core;
      continue;
  }





  match = x86_match_cache(cur_lcpu->caches[level], cur);
  if (match != ((void*)0)) {
      x86_cache_free(cur);
      x86_cache_add_lcpu(match, lcpu);
      found = TRUE;
      break;
  }

  cur_lcpu = cur_lcpu->next_in_core;
     }
 } else {



     die = lcpu->die;
     cur_lcpu = die->lcpus;
     while (cur_lcpu != ((void*)0)) {



  if (cur_lcpu == lcpu) {
      cur_lcpu = cur_lcpu->next_in_die;
      continue;
  }





  match = x86_match_cache(cur_lcpu->caches[level], cur);
  if (match != ((void*)0)) {
      x86_cache_free(cur);
      x86_cache_add_lcpu(match, lcpu);
      found = TRUE;
      break;
  }

  cur_lcpu = cur_lcpu->next_in_die;
     }
 }





 if (!found) {
     x86_cache_add_lcpu(cur, lcpu);
 }
    }

    simple_unlock(&x86_topo_lock);
}
