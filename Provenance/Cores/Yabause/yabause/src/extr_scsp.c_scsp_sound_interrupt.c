
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int scipd; int scieb; } ;


 int WRITE_THROUGH (int) ;
 TYPE_1__ scsp ;
 int scsp_trigger_sound_interrupt (int) ;

__attribute__((used)) static void
scsp_sound_interrupt (u32 id)
{




  scsp.scipd |= id;
  WRITE_THROUGH (scsp.scipd);

  if (scsp.scieb & id)
    scsp_trigger_sound_interrupt (id);
}
