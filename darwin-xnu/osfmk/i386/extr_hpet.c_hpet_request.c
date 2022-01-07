
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int flags; scalar_t__ HpetCmp; int HpetCfg; TYPE_4__* Hpet; } ;
typedef TYPE_1__ x86_pkg_t ;
struct TYPE_10__ {scalar_t__ primary; TYPE_3__* core; } ;
typedef TYPE_2__ x86_lcpu_t ;
struct TYPE_11__ {scalar_t__ HpetCmp; int HpetCfg; TYPE_4__* Hpet; int HpetVec; TYPE_1__* package; } ;
typedef TYPE_3__ x86_core_t ;
typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_12__ {int Config; } ;
typedef TYPE_4__ hpetTimer_t ;
struct TYPE_13__ {int hpetOffset; int hpetVector; } ;
typedef TYPE_5__ hpetRequest_t ;
typedef int boolean_t ;


 int FALSE ;
 int Tn_INT_ENB_CNF ;
 int X86PKG_FL_HAS_HPET ;
 TYPE_2__* cpu_to_lcpu (scalar_t__) ;
 scalar_t__ hpetArea ;
 int hpet_arg ;
 int hpet_req (int ,int ,TYPE_5__*) ;
 int ml_get_apicid (scalar_t__) ;
 int ml_set_interrupts_enabled (int ) ;
 scalar_t__ real_ncpus ;
 int stub1 (int ,int ,TYPE_5__*) ;

int
hpet_request(uint32_t cpu)
{
    hpetRequest_t hpetReq;
    int rc;
    x86_lcpu_t *lcpu;
    x86_core_t *core;
    x86_pkg_t *pkg;
    boolean_t enabled;

    if (hpet_req == ((void*)0)) {
 return(-1);
    }





    if (cpu >= real_ncpus) {
 enabled = ml_set_interrupts_enabled(FALSE);
 lcpu = cpu_to_lcpu(cpu);
 if (lcpu != ((void*)0)) {
     core = lcpu->core;
     pkg = core->package;

     if (lcpu->primary) {
  pkg->flags |= X86PKG_FL_HAS_HPET;
     }
 }

 ml_set_interrupts_enabled(enabled);
 return(0);
    }

    rc = (*hpet_req)(ml_get_apicid(cpu), hpet_arg, &hpetReq);
    if (rc != 0) {
 return(rc);
    }

    enabled = ml_set_interrupts_enabled(FALSE);
    lcpu = cpu_to_lcpu(cpu);
    core = lcpu->core;
    pkg = core->package;




    core->Hpet = (hpetTimer_t *)((uint8_t *)hpetArea + hpetReq.hpetOffset);
    core->HpetVec = hpetReq.hpetVector;




    core->Hpet->Config |= Tn_INT_ENB_CNF;




    core->HpetCfg = core->Hpet->Config;
    core->HpetCmp = 0;





    if (lcpu->primary) {
 pkg->Hpet = core->Hpet;
 pkg->HpetCfg = core->HpetCfg;
 pkg->HpetCmp = core->HpetCmp;
 pkg->flags |= X86PKG_FL_HAS_HPET;
    }

    ml_set_interrupts_enabled(enabled);

    return(0);
}
