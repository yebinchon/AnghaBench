
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stdout ;

void linenoiseClearScreen(void) {
    fprintf(stdout,"\x1b[H\x1b[2J");
}
