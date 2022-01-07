
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* gr; } ;
struct TYPE_3__ {int h; } ;


 int EL_ANOMALY ;
 size_t SSP_PC ;
 int elprintf (int ,char*,int) ;
 TYPE_2__ known_regs ;

void tr_unhandled(void)
{



 elprintf(EL_ANOMALY, "unhandled @ %04x\n", known_regs.gr[SSP_PC].h<<1);

}
