
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* Read_Byte ) (int ) ;} ;
typedef TYPE_1__ c68k_struc ;


 int stub1 (int ) ;

u32 C68k_Read_Byte(c68k_struc *cpu, u32 adr)
{
    return cpu->Read_Byte(adr);
}
