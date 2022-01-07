
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int regs ;
struct TYPE_5__ {int ax; } ;
struct TYPE_6__ {TYPE_1__ x; } ;
typedef TYPE_2__ __dpmi_regs ;


 int __dpmi_int (int,TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void vga_setmode(int mode)
{
 __dpmi_regs regs;

 memset(&regs,0,sizeof(regs));
 regs.x.ax=mode;

 __dpmi_int(0x10,&regs);
}
