
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int fsft; int krs; int * rrp; int eincr; int * srp; int eincs; int * drp; int eincd; int * arp; int einca; } ;
typedef TYPE_1__ slot_t ;



__attribute__((used)) static void
scsp_slot_refresh_einc (slot_t *slot, u32 adsr_bitmask)
{
  if (slot->arp && (adsr_bitmask & 0x1))
    slot->einca = slot->arp[(14 - slot->fsft) >> slot->krs];
  if (slot->drp && (adsr_bitmask & 0x2))
    slot->eincd = slot->drp[(14 - slot->fsft) >> slot->krs];
  if (slot->srp && (adsr_bitmask & 0x4))
    slot->eincs = slot->srp[(14 - slot->fsft) >> slot->krs];
  if (slot->rrp && (adsr_bitmask & 0x8))
    slot->eincr = slot->rrp[(14 - slot->fsft) >> slot->krs];
}
