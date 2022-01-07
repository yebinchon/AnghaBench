
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int printf (char*,...) ;
 int vcos_getmicrosecs () ;
 int vcos_sleep (int) ;

__attribute__((used)) static void check_timer(void)
{
   uint32_t start = vcos_getmicrosecs();
   uint32_t sleep_time = 1000;

   printf("0\n");

   while (1)
   {
      uint32_t now;
      vcos_sleep(sleep_time);
      now = vcos_getmicrosecs();
      printf("%d - sleep %d\n", now - start, sleep_time);
   }
}
