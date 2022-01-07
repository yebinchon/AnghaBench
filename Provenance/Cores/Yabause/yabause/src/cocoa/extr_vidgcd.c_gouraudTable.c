
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int addr; } ;
struct TYPE_12__ {scalar_t__ CMDGRDA; } ;
struct TYPE_11__ {void* value; } ;
struct TYPE_10__ {void* value; } ;
struct TYPE_9__ {void* value; } ;
struct TYPE_8__ {void* value; } ;


 void* T1ReadWord (int ,int) ;
 int Vdp1Ram ;
 int Vdp1ReadCommand (TYPE_5__*,int ,int ) ;
 TYPE_6__* Vdp1Regs ;
 TYPE_5__ cmd ;
 TYPE_4__ gouraudA ;
 TYPE_3__ gouraudB ;
 TYPE_2__ gouraudC ;
 TYPE_1__ gouraudD ;

__attribute__((used)) static void gouraudTable(void)
{
 int gouraudTableAddress;

  Vdp1ReadCommand(&cmd, Vdp1Regs->addr, Vdp1Ram);

 gouraudTableAddress = (((unsigned int)cmd.CMDGRDA) << 3);

 gouraudA.value = T1ReadWord(Vdp1Ram,gouraudTableAddress);
 gouraudB.value = T1ReadWord(Vdp1Ram,gouraudTableAddress+2);
 gouraudC.value = T1ReadWord(Vdp1Ram,gouraudTableAddress+4);
 gouraudD.value = T1ReadWord(Vdp1Ram,gouraudTableAddress+6);
}
