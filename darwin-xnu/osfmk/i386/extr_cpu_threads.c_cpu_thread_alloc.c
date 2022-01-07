
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;


struct TYPE_19__ {struct TYPE_19__* next; } ;
typedef TYPE_1__ x86_pkg_t ;
typedef int x86_die_t ;
struct TYPE_20__ {int package; int die; } ;
typedef TYPE_2__ x86_core_t ;
typedef int uint32_t ;
struct TYPE_21__ {int lcpu; int cpu_threadtype; int cpu_phys_number; } ;
typedef TYPE_3__ cpu_data_t ;
struct TYPE_18__ {int physical_cpu_max; int logical_cpu_max; } ;


 int CPU_THREADTYPE_INTEL_HTT ;
 int CPU_THREADTYPE_NONE ;
 TYPE_3__* cpu_datap (int) ;
 scalar_t__ cpu_is_hyperthreaded () ;
 int initTopoParms () ;
 TYPE_16__ machine_info ;
 int mp_safe_spin_lock (int *) ;
 int simple_unlock (int *) ;
 int topoParmsInited ;
 int x86_core_add_lcpu (TYPE_2__*,int *) ;
 TYPE_2__* x86_core_alloc (int) ;
 TYPE_2__* x86_core_find (int) ;
 int x86_core_free (TYPE_2__*) ;
 int x86_die_add_core (int *,TYPE_2__*) ;
 int x86_die_add_lcpu (int ,int *) ;
 int * x86_die_alloc (int) ;
 int * x86_die_find (int) ;
 int x86_die_free (int *) ;
 int x86_lcpu_add_caches (int *) ;
 int x86_lcpu_init (int) ;
 int x86_package_add_core (TYPE_1__*,TYPE_2__*) ;
 int x86_package_add_die (TYPE_1__*,int *) ;
 int x86_package_add_lcpu (int ,int *) ;
 TYPE_1__* x86_package_alloc (int) ;
 TYPE_1__* x86_package_find (int) ;
 int x86_package_free (TYPE_1__*) ;
 TYPE_1__* x86_pkgs ;
 int x86_topo_lock ;

void *
cpu_thread_alloc(int cpu)
{
    x86_core_t *core = ((void*)0);
    x86_die_t *die = ((void*)0);
    x86_pkg_t *pkg = ((void*)0);
    cpu_data_t *cpup;
    uint32_t phys_cpu;




    mp_safe_spin_lock(&x86_topo_lock);




    if (!topoParmsInited)
 initTopoParms();

    cpup = cpu_datap(cpu);

    phys_cpu = cpup->cpu_phys_number;

    x86_lcpu_init(cpu);




    if (cpu_is_hyperthreaded()) {
 cpup->cpu_threadtype = CPU_THREADTYPE_INTEL_HTT;
    } else {
 cpup->cpu_threadtype = CPU_THREADTYPE_NONE;
    }




    do {
 pkg = x86_package_find(cpu);
 if (pkg == ((void*)0)) {



     simple_unlock(&x86_topo_lock);
     pkg = x86_package_alloc(cpu);
     mp_safe_spin_lock(&x86_topo_lock);
     if (x86_package_find(cpu) != ((void*)0)) {
  x86_package_free(pkg);
  continue;
     }




     pkg->next = x86_pkgs;
     x86_pkgs = pkg;
 }
    } while (pkg == ((void*)0));




    do {
 die = x86_die_find(cpu);
 if (die == ((void*)0)) {



     simple_unlock(&x86_topo_lock);
     die = x86_die_alloc(cpu);
     mp_safe_spin_lock(&x86_topo_lock);
     if (x86_die_find(cpu) != ((void*)0)) {
  x86_die_free(die);
  continue;
     }




     x86_package_add_die(pkg, die);
 }
    } while (die == ((void*)0));




    do {
 core = x86_core_find(cpu);
 if (core == ((void*)0)) {



     simple_unlock(&x86_topo_lock);
     core = x86_core_alloc(cpu);
     mp_safe_spin_lock(&x86_topo_lock);
     if (x86_core_find(cpu) != ((void*)0)) {
  x86_core_free(core);
  continue;
     }




     x86_die_add_core(die, core);
     x86_package_add_core(pkg, core);
     machine_info.physical_cpu_max += 1;
 }
    } while (core == ((void*)0));





    machine_info.logical_cpu_max += 1;
    simple_unlock(&x86_topo_lock);




    x86_core_add_lcpu(core, &cpup->lcpu);
    x86_die_add_lcpu(core->die, &cpup->lcpu);
    x86_package_add_lcpu(core->package, &cpup->lcpu);
    x86_lcpu_add_caches(&cpup->lcpu);

    return (void *) core;
}
