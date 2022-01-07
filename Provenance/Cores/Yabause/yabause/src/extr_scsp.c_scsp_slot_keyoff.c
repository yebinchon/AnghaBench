
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ecurp; void* ecnt; int enxt; void* ecmp; int eincr; int * einc; } ;
typedef TYPE_1__ slot_t ;
struct TYPE_5__ {TYPE_1__* slot; } ;


 int SCSPLOG (char*,int) ;
 scalar_t__ SCSP_ENV_ATTACK ;
 void* SCSP_ENV_DE ;
 scalar_t__ SCSP_ENV_RELEASE ;
 TYPE_3__ scsp ;
 int scsp_release_next ;

__attribute__((used)) static void
scsp_slot_keyoff (slot_t *slot)
{

  if (slot->ecurp != SCSP_ENV_RELEASE)
    {
      SCSPLOG ("key off slot %d\n", slot - &(scsp.slot[0]));


      if (slot->ecurp == SCSP_ENV_ATTACK)
        slot->ecnt = SCSP_ENV_DE - slot->ecnt;
      slot->einc = &slot->eincr;
      slot->ecmp = SCSP_ENV_DE;
      slot->ecurp = SCSP_ENV_RELEASE;
      slot->enxt = scsp_release_next;
    }
}
