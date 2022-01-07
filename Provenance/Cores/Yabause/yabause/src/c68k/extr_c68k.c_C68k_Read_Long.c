
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* Read_Word ) (int) ;} ;
typedef TYPE_1__ c68k_struc ;


 int stub1 (int) ;
 int stub2 (int) ;
 int stub3 (int) ;
 int stub4 (int) ;

u32 C68k_Read_Long(c68k_struc *cpu, u32 adr)
{



    return (cpu->Read_Word(adr) << 16) | (cpu->Read_Word(adr + 2) & 0xFFFF);

}
