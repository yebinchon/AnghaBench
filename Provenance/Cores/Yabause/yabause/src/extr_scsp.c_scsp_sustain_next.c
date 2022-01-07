
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enxt; void* ecmp; int * einc; void* ecnt; } ;
typedef TYPE_1__ slot_t ;


 void* SCSP_ENV_DE ;
 int scsp_env_null_next ;

__attribute__((used)) static void
scsp_sustain_next (slot_t *slot)
{


  slot->ecnt = SCSP_ENV_DE;
  slot->einc = ((void*)0);
  slot->ecmp = SCSP_ENV_DE + 1;
  slot->enxt = scsp_env_null_next;
}
