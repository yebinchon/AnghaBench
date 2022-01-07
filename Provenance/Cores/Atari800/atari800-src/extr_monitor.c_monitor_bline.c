
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANTIC_break_ypos ;
 int get_dec (int*) ;
 int printf (char*,...) ;

__attribute__((used)) static void monitor_bline(void)
{
 get_dec(&ANTIC_break_ypos);
 if (ANTIC_break_ypos >= 1008 && ANTIC_break_ypos <= 1247)
  printf("Blinking scanline %d\n", ANTIC_break_ypos - 1000);




 else
  printf("BLINE disabled\n");
}
