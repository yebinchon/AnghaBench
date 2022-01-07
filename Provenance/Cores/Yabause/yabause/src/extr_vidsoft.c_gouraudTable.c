
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ CMDGRDA; } ;
typedef TYPE_1__ vdp1cmd_struct ;
typedef int u8 ;
typedef int Vdp1 ;
struct TYPE_11__ {void* value; } ;
struct TYPE_10__ {void* value; } ;
struct TYPE_9__ {void* value; } ;
struct TYPE_8__ {void* value; } ;


 void* T1ReadWord (int *,int) ;
 TYPE_6__ gouraudA ;
 TYPE_5__ gouraudB ;
 TYPE_4__ gouraudC ;
 TYPE_3__ gouraudD ;

__attribute__((used)) static void gouraudTable(u8* ram, Vdp1* regs, vdp1cmd_struct * cmd)
{
 int gouraudTableAddress;



 gouraudTableAddress = (((unsigned int)cmd->CMDGRDA) << 3);

   gouraudA.value = T1ReadWord(ram, gouraudTableAddress);
   gouraudB.value = T1ReadWord(ram, gouraudTableAddress + 2);
   gouraudC.value = T1ReadWord(ram, gouraudTableAddress + 4);
   gouraudD.value = T1ReadWord(ram, gouraudTableAddress + 6);
}
