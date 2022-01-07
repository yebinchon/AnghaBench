
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int initialized; struct TYPE_6__* hstats; struct TYPE_6__* lstats; } ;
typedef TYPE_1__ ctl_arena_stats_t ;
struct TYPE_7__ {int narenas; TYPE_1__* arenas; } ;


 int a0dalloc (TYPE_1__*) ;
 scalar_t__ a0malloc (int) ;
 scalar_t__ config_stats ;
 scalar_t__ ctl_arena_init (TYPE_1__*) ;
 scalar_t__ ctl_epoch ;
 int ctl_initialized ;
 int ctl_mtx ;
 int ctl_refresh () ;
 TYPE_3__ ctl_stats ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int narenas_total_get () ;

__attribute__((used)) static bool
ctl_init(void)
{
 bool ret;

 malloc_mutex_lock(&ctl_mtx);
 if (!ctl_initialized) {




  ctl_stats.narenas = narenas_total_get();
  ctl_stats.arenas = (ctl_arena_stats_t *)a0malloc(
      (ctl_stats.narenas + 1) * sizeof(ctl_arena_stats_t));
  if (ctl_stats.arenas == ((void*)0)) {
   ret = 1;
   goto label_return;
  }
  memset(ctl_stats.arenas, 0, (ctl_stats.narenas + 1) *
      sizeof(ctl_arena_stats_t));






  if (config_stats) {
   unsigned i;
   for (i = 0; i <= ctl_stats.narenas; i++) {
    if (ctl_arena_init(&ctl_stats.arenas[i])) {
     unsigned j;
     for (j = 0; j < i; j++) {
      a0dalloc(
          ctl_stats.arenas[j].lstats);
      a0dalloc(
          ctl_stats.arenas[j].hstats);
     }
     a0dalloc(ctl_stats.arenas);
     ctl_stats.arenas = ((void*)0);
     ret = 1;
     goto label_return;
    }
   }
  }
  ctl_stats.arenas[ctl_stats.narenas].initialized = 1;

  ctl_epoch = 0;
  ctl_refresh();
  ctl_initialized = 1;
 }

 ret = 0;
label_return:
 malloc_mutex_unlock(&ctl_mtx);
 return (ret);
}
