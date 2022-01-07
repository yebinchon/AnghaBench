
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t lsp_probe; } ;
typedef TYPE_1__ lockstat_probe_t ;
typedef int dtrace_id_t ;


 int ASSERT (scalar_t__) ;
 int FALSE ;
 int LS_NPROBES ;
 int lockstat_hot_patch (int ,size_t) ;
 scalar_t__* lockstat_probemap ;
 int membar_producer () ;

__attribute__((used)) static void
lockstat_disable(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg, id)

 lockstat_probe_t *probe = parg;
 int i;

 ASSERT(lockstat_probemap[probe->lsp_probe]);

 lockstat_probemap[probe->lsp_probe] = 0;
 lockstat_hot_patch(FALSE, probe->lsp_probe);
 membar_producer();




 for (i = 0; i < LS_NPROBES; i++) {
  if (lockstat_probemap[i]) {





   return;
  }
 }

}
