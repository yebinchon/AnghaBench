
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ lnum; TYPE_1__* core; int cpu_num; TYPE_3__** caches; } ;
typedef TYPE_2__ x86_lcpu_t ;
struct TYPE_16__ {scalar_t__ type; } ;
typedef TYPE_3__ x86_cpu_cache_t ;
struct TYPE_17__ {scalar_t__ pset; int num; TYPE_3__* cache; struct TYPE_17__* next; } ;
typedef TYPE_4__ x86_affinity_set_t ;
typedef int * processor_t ;
struct TYPE_18__ {scalar_t__ cpu_number; int * cpu_processor; int cpu_phys_number; int lcpu; } ;
typedef TYPE_5__ cpu_data_t ;
typedef int boolean_t ;
struct TYPE_20__ {int physical_cpu; int logical_cpu; } ;
struct TYPE_19__ {int LLCDepth; int stable; } ;
struct TYPE_14__ {int num_lcpus; } ;


 scalar_t__ CPU_CACHE_TYPE_UNIF ;
 int FALSE ;
 scalar_t__ PROCESSOR_SET_NULL ;
 int TOPO_DBG (char*,...) ;
 int TRUE ;
 int assert (int) ;
 int * cpu_data_ptr ;
 TYPE_5__* cpu_datap (int) ;
 scalar_t__ cpu_number () ;
 int cpu_shadow_sort (int) ;
 TYPE_2__* cpu_to_lcpu (int) ;
 TYPE_4__* find_cache_affinity (TYPE_3__*) ;
 scalar_t__ kalloc (int) ;
 int kprintf (char*,int,TYPE_5__*,int ,int) ;
 int lapic_cpu_map (int ,int) ;
 int lapicid_cmp ;
 TYPE_8__ machine_info ;
 int master_cpu ;
 int master_processor ;
 int ml_set_interrupts_enabled (int ) ;
 int panic (char*) ;
 int pmCPUStateInit () ;
 int processor_init (int *,int,scalar_t__) ;
 scalar_t__ processor_pset (int ) ;
 int processor_set_primary (int *,int *) ;
 scalar_t__ pset_create (int ) ;
 int pset_node_root () ;
 int qsort (void*,int,int,int ) ;
 TYPE_7__ topoParms ;
 scalar_t__ topo_dbg ;
 TYPE_4__* x86_affinities ;
 int x86_affinity_count ;
 int x86_set_logical_topology (int *,int ,int) ;
 int x86_validate_topology () ;

void
cpu_topology_sort(int ncpus)
{
 int i;
 boolean_t istate;
 processor_t lprim = ((void*)0);

 assert(machine_info.physical_cpu == 1);
 assert(machine_info.logical_cpu == 1);
 assert(master_cpu == 0);
 assert(cpu_number() == 0);
 assert(cpu_datap(0)->cpu_number == 0);


 istate = ml_set_interrupts_enabled(FALSE);

 if (topo_dbg) {
  TOPO_DBG("cpu_topology_start() %d cpu%s registered\n",
   ncpus, (ncpus > 1) ? "s" : "");
  for (i = 0; i < ncpus; i++) {
   cpu_data_t *cpup = cpu_datap(i);
   TOPO_DBG("\tcpu_data[%d]:%p local apic 0x%x\n",
    i, (void *) cpup, cpup->cpu_phys_number);
  }
 }





 if (ncpus > 1) {
  qsort((void *) &cpu_data_ptr[1],
   ncpus - 1,
   sizeof(cpu_data_t *),
   lapicid_cmp);
 }
 if (topo_dbg) {
  TOPO_DBG("cpu_topology_start() after sorting:\n");
  for (i = 0; i < ncpus; i++) {
   cpu_data_t *cpup = cpu_datap(i);
   TOPO_DBG("\tcpu_data[%d]:%p local apic 0x%x\n",
    i, (void *) cpup, cpup->cpu_phys_number);
  }
 }




 for (i = 0; i < ncpus; i++) {
  cpu_data_t *cpup = cpu_datap(i);

  if (cpup->cpu_number != i) {
   kprintf("cpu_datap(%d):%p local apic id 0x%x "
    "remapped from %d\n",
    i, cpup, cpup->cpu_phys_number,
    cpup->cpu_number);
  }
  cpup->cpu_number = i;
  lapic_cpu_map(cpup->cpu_phys_number, i);
  x86_set_logical_topology(&cpup->lcpu, cpup->cpu_phys_number, i);
 }

 cpu_shadow_sort(ncpus);
 x86_validate_topology();

 ml_set_interrupts_enabled(istate);
 TOPO_DBG("cpu_topology_start() LLC is L%d\n", topoParms.LLCDepth + 1);




 topoParms.stable = TRUE;
 pmCPUStateInit();






 TOPO_DBG("cpu_topology_start() creating affinity sets:\n");
 for (i = 0; i < ncpus; i++) {
  cpu_data_t *cpup = cpu_datap(i);
  x86_lcpu_t *lcpup = cpu_to_lcpu(i);
  x86_cpu_cache_t *LLC_cachep;
  x86_affinity_set_t *aset;

  LLC_cachep = lcpup->caches[topoParms.LLCDepth];
  assert(LLC_cachep->type == CPU_CACHE_TYPE_UNIF);
  aset = find_cache_affinity(LLC_cachep);
  if (aset == ((void*)0)) {
   aset = (x86_affinity_set_t *) kalloc(sizeof(*aset));
   if (aset == ((void*)0))
    panic("cpu_topology_start() failed aset alloc");
   aset->next = x86_affinities;
   x86_affinities = aset;
   aset->num = x86_affinity_count++;
   aset->cache = LLC_cachep;
   aset->pset = (i == master_cpu) ?
     processor_pset(master_processor) :
     pset_create(pset_node_root());
   if (aset->pset == PROCESSOR_SET_NULL)
    panic("cpu_topology_start: pset_create");
   TOPO_DBG("\tnew set %p(%d) pset %p for cache %p\n",
    aset, aset->num, aset->pset, aset->cache);
  }

  TOPO_DBG("\tprocessor_init set %p(%d) lcpup %p(%d) cpu %p processor %p\n",
   aset, aset->num, lcpup, lcpup->cpu_num, cpup, cpup->cpu_processor);

  if (i != master_cpu)
   processor_init(cpup->cpu_processor, i, aset->pset);

  if (lcpup->core->num_lcpus > 1) {
   if (lcpup->lnum == 0)
    lprim = cpup->cpu_processor;

   processor_set_primary(cpup->cpu_processor, lprim);
  }
 }
}
