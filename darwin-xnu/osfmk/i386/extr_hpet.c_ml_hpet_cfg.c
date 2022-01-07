
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int HpetVec; int flags; scalar_t__ HpetCmp; int HpetCfg; TYPE_4__* Hpet; } ;
typedef TYPE_1__ x86_pkg_t ;
struct TYPE_8__ {int primary; TYPE_3__* core; } ;
typedef TYPE_2__ x86_lcpu_t ;
struct TYPE_9__ {int HpetVec; scalar_t__ HpetCmp; int HpetCfg; TYPE_4__* Hpet; TYPE_1__* package; } ;
typedef TYPE_3__ x86_core_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_10__ {int Config; } ;
typedef TYPE_4__ hpetTimer_t ;
struct TYPE_11__ {int TIM1_CONF; } ;
typedef TYPE_5__ hpetReg_t ;
typedef int boolean_t ;


 int DBG (char*,int,int *,int) ;
 int FALSE ;
 int Tn_INT_ENB_CNF ;
 int X86PKG_FL_HAS_HPET ;
 TYPE_2__* cpu_to_lcpu (int) ;
 scalar_t__ hpetArea ;
 int ml_set_interrupts_enabled (int ) ;
 int panic (char*,int) ;

void
ml_hpet_cfg(uint32_t cpu, uint32_t hpetVect)
{
 uint64_t *hpetVaddr;
 hpetTimer_t *hpet;
 x86_lcpu_t *lcpu;
 x86_core_t *core;
 x86_pkg_t *pkg;
 boolean_t enabled;

 if(cpu > 1) {
  panic("ml_hpet_cfg: invalid cpu = %d\n", cpu);
 }

 lcpu = cpu_to_lcpu(cpu);
 core = lcpu->core;
 pkg = core->package;




 if (!lcpu->primary)
     return;

 enabled = ml_set_interrupts_enabled(FALSE);


 hpetVaddr = (uint64_t *)(((uintptr_t)&(((hpetReg_t *)hpetArea)->TIM1_CONF)) + (cpu << 5));
 hpet = (hpetTimer_t *)hpetVaddr;

 DBG("ml_hpet_cfg: HPET for cpu %d at %p, vector = %d\n",
      cpu, hpetVaddr, hpetVect);


 core->Hpet = hpet;
 core->HpetVec = hpetVect;




 core->Hpet->Config |= Tn_INT_ENB_CNF;


 core->HpetCfg = core->Hpet->Config;
 core->HpetCmp = 0;





 pkg->Hpet = core->Hpet;
 pkg->HpetVec = core->HpetVec;
 pkg->HpetCfg = core->HpetCfg;
 pkg->HpetCmp = core->HpetCmp;
 pkg->flags |= X86PKG_FL_HAS_HPET;

 ml_set_interrupts_enabled(enabled);
}
