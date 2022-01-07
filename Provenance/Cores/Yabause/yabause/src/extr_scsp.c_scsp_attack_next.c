
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enxt; int ecurp; int sl; int ecmp; int eincd; int * einc; int ecnt; } ;
typedef TYPE_1__ slot_t ;


 int SCSP_ENV_DECAY ;
 int SCSP_ENV_DS ;
 int scsp_decay_next ;

__attribute__((used)) static void
scsp_attack_next (slot_t *slot)
{


  slot->ecnt = SCSP_ENV_DS;
  slot->einc = &slot->eincd;
  slot->ecmp = slot->sl;
  slot->ecurp = SCSP_ENV_DECAY;
  slot->enxt = scsp_decay_next;
}
