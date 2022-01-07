
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t lsp_probe; } ;
typedef TYPE_1__ lockstat_probe_t ;
typedef scalar_t__ dtrace_id_t ;


 int ASSERT (int) ;
 int TRUE ;
 int lockstat_hot_patch (int ,size_t) ;
 scalar_t__* lockstat_probemap ;
 int membar_producer () ;

__attribute__((used)) static int
lockstat_enable(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg)

 lockstat_probe_t *probe = parg;

 ASSERT(!lockstat_probemap[probe->lsp_probe]);

 lockstat_probemap[probe->lsp_probe] = id;
 membar_producer();

 lockstat_hot_patch(TRUE, probe->lsp_probe);
 membar_producer();
 return(0);

}
