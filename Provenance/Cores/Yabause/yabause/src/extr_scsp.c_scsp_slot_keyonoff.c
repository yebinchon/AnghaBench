
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ key; } ;
typedef TYPE_1__ slot_t ;
struct TYPE_6__ {TYPE_1__* slot; } ;


 TYPE_4__ scsp ;
 int scsp_slot_keyoff (TYPE_1__*) ;
 int scsp_slot_keyon (TYPE_1__*) ;

__attribute__((used)) static void
scsp_slot_keyonoff (void)
{
  slot_t *slot;

  for(slot = &(scsp.slot[0]); slot < &(scsp.slot[32]); slot++)
    {
      if (slot->key)
        scsp_slot_keyon (slot);
      else
        scsp_slot_keyoff (slot);
    }
}
