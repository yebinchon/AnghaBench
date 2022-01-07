
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ecurp; size_t sa; int lea; int enxt; int ecmp; int einca; int * einc; scalar_t__ env; int ecnt; scalar_t__ fcnt; int * buf16; int * buf8; scalar_t__ pcm8b; int lsa; } ;
typedef TYPE_1__ slot_t ;
typedef int s8 ;
typedef int s16 ;
struct TYPE_7__ {int (* GetPC ) () ;} ;
struct TYPE_6__ {int * scsp_ram; TYPE_1__* slot; } ;


 TYPE_4__* M68K ;
 int SCSPLOG (char*,int,int ,size_t,int ,int) ;
 int SCSP_ENV_AE ;
 int SCSP_ENV_AS ;
 scalar_t__ SCSP_ENV_ATTACK ;
 scalar_t__ SCSP_ENV_RELEASE ;
 int SCSP_FREQ_LB ;
 int SCSP_RAM_MASK ;
 TYPE_3__ scsp ;
 int scsp_attack_next ;
 int stub1 () ;

__attribute__((used)) static void
scsp_slot_keyon (slot_t *slot)
{

  if (slot->ecurp == SCSP_ENV_RELEASE)
    {
      SCSPLOG ("key on slot %d. 68K PC = %08X slot->sa = %08X slot->lsa = %08X "
               "slot->lea = %08X\n", slot - &(scsp.slot[0]), M68K->GetPC(),
               slot->sa, slot->lsa, slot->lea >> SCSP_FREQ_LB);


      if (slot->pcm8b)
        {
          slot->buf8 = (s8*) &(scsp.scsp_ram[slot->sa]);
          if ((slot->sa + (slot->lea >> SCSP_FREQ_LB)) > SCSP_RAM_MASK)
            slot->lea = (SCSP_RAM_MASK - slot->sa) << SCSP_FREQ_LB;
        }
      else
        {
          slot->buf16 = (s16*) &(scsp.scsp_ram[slot->sa & ~1]);
          if ((slot->sa + (slot->lea >> (SCSP_FREQ_LB - 1))) > SCSP_RAM_MASK)
            slot->lea = (SCSP_RAM_MASK - slot->sa) << (SCSP_FREQ_LB - 1);
        }

      slot->fcnt = 0;
      slot->ecnt = SCSP_ENV_AS;

      slot->env = 0;

      slot->einc = &slot->einca;
      slot->ecurp = SCSP_ENV_ATTACK;
      slot->ecmp = SCSP_ENV_AE;
      slot->enxt = scsp_attack_next;
    }
}
