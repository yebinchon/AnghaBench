
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inportb (int) ;

__attribute__((used)) static void vga_vsync(void)
{

   do
   {
   }while (inportb(0x3da) & 8);


   do
   {
   }while (!(inportb(0x3da) & 8));
}
