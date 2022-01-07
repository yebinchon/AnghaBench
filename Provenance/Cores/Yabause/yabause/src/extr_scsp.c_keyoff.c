
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Slot {int dummy; } ;


 int RELEASE ;
 int change_envelope_state (struct Slot*,int ) ;

void keyoff(struct Slot * slot)
{
   change_envelope_state(slot, RELEASE);
}
