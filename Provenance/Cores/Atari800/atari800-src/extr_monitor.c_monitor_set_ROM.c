
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int MEMORY_SetROM (int,int) ;
 scalar_t__ get_attrib_range (int*,int*) ;
 int printf (char*,int,int) ;

__attribute__((used)) static void monitor_set_ROM(void)
{
 UWORD addr1;
 UWORD addr2;
 if (get_attrib_range(&addr1, &addr2)) {
  MEMORY_SetROM(addr1, addr2);
  printf("Changed memory from %04X to %04X into ROM\n",
      addr1, addr2);
 }
}
