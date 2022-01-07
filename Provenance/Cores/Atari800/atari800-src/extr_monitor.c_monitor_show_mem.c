
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef char UBYTE ;


 int MEMORY_SafeGetByte (int) ;
 int get_hex (int*) ;
 int printf (char*,int) ;
 int putchar (char) ;

__attribute__((used)) static void monitor_show_mem(UWORD *addr)
{
 int count = 16;
 get_hex(addr);
 do {
  int i;
  printf("%04X: ", *addr);
  for (i = 0; i < 16; i++)
   printf("%02X ", MEMORY_SafeGetByte((UWORD) (*addr + i)));
  putchar(' ');
  for (i = 0; i < 16; i++) {
   UBYTE c;
   c = MEMORY_SafeGetByte(*addr);
   (*addr)++;
   putchar((c >= ' ' && c <= 'z' && c != '\x60') ? c : '.');
  }
  putchar('\n');
 } while (--count > 0);
}
