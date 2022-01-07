
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GTIA_GRACTL ;
 int * GTIA_TRIG ;
 int * GTIA_TRIG_latch ;
 int INPUT_key_consol ;
 int consol ;

void GTIA_Frame(void)
{



 consol = INPUT_key_consol | 0x08;


 if (GTIA_GRACTL & 4) {
  GTIA_TRIG_latch[0] &= GTIA_TRIG[0];
  GTIA_TRIG_latch[1] &= GTIA_TRIG[1];
  GTIA_TRIG_latch[2] &= GTIA_TRIG[2];
  GTIA_TRIG_latch[3] &= GTIA_TRIG[3];
 }
}
