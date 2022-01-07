
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t lsp_probe; scalar_t__ lsp_id; } ;
typedef TYPE_1__ lockstat_probe_t ;
typedef int dtrace_id_t ;


 int ASSERT (int) ;
 int * lockstat_probemap ;

__attribute__((used)) static void
lockstat_destroy(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg, id)

 lockstat_probe_t *probe = parg;

 ASSERT(!lockstat_probemap[probe->lsp_probe]);
 probe->lsp_id = 0;
}
