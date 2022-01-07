
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mcipd; int mcieb; } ;


 int WRITE_THROUGH (int) ;
 TYPE_1__ scsp ;
 int scsp_trigger_main_interrupt (int) ;

__attribute__((used)) static void
scsp_main_interrupt (u32 id)
{



  scsp.mcipd |= id;
  WRITE_THROUGH (scsp.mcipd);

  if (scsp.mcieb & id)
    scsp_trigger_main_interrupt (id);
}
