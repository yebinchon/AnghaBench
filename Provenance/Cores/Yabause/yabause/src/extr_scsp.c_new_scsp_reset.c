
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Scsp {TYPE_2__* slots; } ;
struct TYPE_3__ {int attenuation; int num; int envelope; } ;
struct TYPE_4__ {TYPE_1__ state; } ;
typedef int ScspDsp ;


 int RELEASE ;
 int fill_alfo_tables () ;
 int fill_plfo_tables () ;
 int memset (struct Scsp*,int ,int) ;
 struct Scsp scsp_dsp ;

void new_scsp_reset(struct Scsp* s)
{
   int slot_num;
   memset(s, 0, sizeof(struct Scsp));

   for (slot_num = 0; slot_num < 32; slot_num++)
   {
      s->slots[slot_num].state.attenuation = 0x3FF;
      s->slots[slot_num].state.envelope = RELEASE;
      s->slots[slot_num].state.num = slot_num;
   }

   fill_plfo_tables();
   fill_alfo_tables();

   memset(&scsp_dsp, 0, sizeof(ScspDsp));

}
