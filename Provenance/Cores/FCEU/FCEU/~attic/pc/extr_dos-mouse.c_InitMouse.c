
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int regs ;
struct TYPE_5__ {int ax; int cx; int dx; } ;
struct TYPE_6__ {TYPE_1__ x; } ;
typedef TYPE_2__ __dpmi_regs ;


 int __dpmi_int (int,TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;

int InitMouse(void)
{
 __dpmi_regs regs;

 memset(&regs,0,sizeof(regs));
 regs.x.ax=0;
 __dpmi_int(0x33,&regs);
 if(regs.x.ax!=0xFFFF)
  return(0);

 memset(&regs,0,sizeof(regs));
 regs.x.ax=0x7;
 regs.x.cx=0;
 regs.x.dx=260;
 __dpmi_int(0x33,&regs);

 memset(&regs,0,sizeof(regs));
 regs.x.ax=0x8;
 regs.x.cx=0;
 regs.x.dx=260;
 __dpmi_int(0x33,&regs);

 memset(&regs,0,sizeof(regs));
 regs.x.ax=0xF;
 regs.x.cx=8;
 regs.x.dx=8;
 __dpmi_int(0x33,&regs);

 memset(&regs,0,sizeof(regs));
 regs.x.ax=0x2;
 __dpmi_int(0x33,&regs);

 return(1);
}
