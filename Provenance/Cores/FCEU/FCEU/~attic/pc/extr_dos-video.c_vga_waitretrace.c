
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inp (int) ;

__attribute__((used)) static void vga_waitretrace(void)
{
 while(inp(0x3da)&0x8);
 while(!(inp(0x3da)&0x8));
}
