
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ws_col; int ws_row; } ;


 int fflush (int ) ;
 int printf (char*,...) ;
 int progress_full ;
 scalar_t__ progress_printed ;
 int stdout ;
 TYPE_1__ ws ;

void memtest_progress_start(char *title, int pass) {
    int j;

    printf("\x1b[H\x1b[2J");

    for (j = 0; j < ws.ws_col*(ws.ws_row-2); j++) printf(".");
    printf("Please keep the test running several minutes per GB of memory.\n");
    printf("Also check http://www.memtest86.com/ and http://pyropus.ca/software/memtester/");
    printf("\x1b[H\x1b[2K");
    printf("%s [%d]\n", title, pass);
    progress_printed = 0;
    progress_full = ws.ws_col*(ws.ws_row-3);
    fflush(stdout);
}
