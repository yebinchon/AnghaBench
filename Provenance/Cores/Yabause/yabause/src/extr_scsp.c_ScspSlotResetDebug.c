
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int slot_t ;
struct TYPE_5__ {int enxt; int ecurp; int ecmp; int einca; int * einc; int ecnt; scalar_t__ fcnt; } ;
struct TYPE_4__ {int * slot; } ;


 int SCSP_ENV_AE ;
 int SCSP_ENV_AS ;
 int SCSP_ENV_ATTACK ;
 TYPE_2__ debugslot ;
 int memcpy (TYPE_2__*,int *,int) ;
 TYPE_1__ scsp ;
 int scsp_attack_next ;

void
ScspSlotResetDebug(u8 slotnum)
{
  memcpy (&debugslot, &scsp.slot[slotnum], sizeof(slot_t));


  debugslot.fcnt = 0;
  debugslot.ecnt = SCSP_ENV_AS;
  debugslot.einc = &debugslot.einca;
  debugslot.ecmp = SCSP_ENV_AE;
  debugslot.ecurp = SCSP_ENV_ATTACK;
  debugslot.enxt = scsp_attack_next;
}
