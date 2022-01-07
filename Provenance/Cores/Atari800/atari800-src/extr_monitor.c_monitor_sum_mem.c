
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 scalar_t__ MEMORY_SafeGetByte (int) ;
 scalar_t__ get_hex2 (int*,int*) ;
 int printf (char*,int) ;

__attribute__((used)) static void monitor_sum_mem(void)
{
 UWORD addr1;
 UWORD addr2;
 if (get_hex2(&addr1, &addr2)) {
  int sum = 0;
  int i;
  for (i = addr1; i <= addr2; i++)
   sum += MEMORY_SafeGetByte(i);
  printf("SUM: %X\n", sum);
 }
}
