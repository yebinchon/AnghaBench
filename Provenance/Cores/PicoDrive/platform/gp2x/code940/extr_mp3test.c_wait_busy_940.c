
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int loopc; int waitc; int* vstarts; scalar_t__ busy; } ;


 int crashed_940 ;
 int printf (char*,...) ;
 TYPE_1__* shared_ctl ;
 int spend_cycles (int) ;

void wait_busy_940(void)
{
 int i;
 for (i = 0; shared_ctl->busy && i < 0x10000; i++)
  spend_cycles(8*1024);
 if (i < 0x10000) return;


 printf("940 crashed (cnt: %i, ve: ", shared_ctl->loopc);
 for (i = 0; i < 8; i++)
  printf("%i ", shared_ctl->vstarts[i]);
 printf(")\n");
 crashed_940 = 1;

}
