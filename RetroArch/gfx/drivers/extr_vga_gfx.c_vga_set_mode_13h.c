
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ax; } ;
struct TYPE_5__ {TYPE_1__ x; } ;
typedef TYPE_2__ __dpmi_regs ;


 int __dpmi_int (int,TYPE_2__*) ;

__attribute__((used)) static void vga_set_mode_13h(void)
{
   __dpmi_regs r;

   r.x.ax = 0x13;
   __dpmi_int(0x10, &r);
}
