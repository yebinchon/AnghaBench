
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int CPU_regS ;
 int MEMORY_dGetByte (int) ;
 int MEMORY_dGetWord (int) ;
 int printf (char*,int,int,...) ;

__attribute__((used)) static void show_stack(void)
{
 int ts;
 for (ts = 0x101 + CPU_regS; ts < 0x200; ) {
  if (ts < 0x1ff) {
   UWORD ta = (UWORD) (MEMORY_dGetWord(ts) - 2);
   if (MEMORY_dGetByte(ta) == 0x20) {
    printf("%04X: %02X %02X  %04X: JSR %04X\n",
     ts, MEMORY_dGetByte(ts), MEMORY_dGetByte(ts + 1), ta,
     MEMORY_dGetWord(ta + 1));
    ts += 2;
    continue;
   }
  }
  printf("%04X: %02X\n", ts, MEMORY_dGetByte(ts));
  ts++;
 }
}
