
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* Write_Word ) (int,int) ;} ;
typedef TYPE_1__ c68k_struc ;


 int stub1 (int,int) ;
 int stub2 (int,int) ;
 int stub3 (int,int) ;
 int stub4 (int,int) ;

void C68k_Write_Long(c68k_struc *cpu, u32 adr, u32 data)
{




    cpu->Write_Word(adr, data >> 16);
    cpu->Write_Word(adr + 2, data & 0xFFFF);

}
