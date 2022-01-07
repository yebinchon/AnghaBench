
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enxt; int ecurp; int ecmp; int eincs; int * einc; int sl; int ecnt; } ;
typedef TYPE_1__ slot_t ;


 int SCSP_ENV_DE ;
 int SCSP_ENV_SUSTAIN ;
 int scsp_sustain_next ;

__attribute__((used)) static void
scsp_decay_next (slot_t *slot)
{


  slot->ecnt = slot->sl;
  slot->einc = &slot->eincs;
  slot->ecmp = SCSP_ENV_DE;
  slot->ecurp = SCSP_ENV_SUSTAIN;
  slot->enxt = scsp_sustain_next;
}
