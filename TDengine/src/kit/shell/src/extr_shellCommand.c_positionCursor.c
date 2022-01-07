
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DOWN ;
 int LEFT ;
 int RIGHT ;
 int UP ;
 int fflush (int ) ;
 int fprintf (int ,char*,int) ;
 int stdout ;

void positionCursor(int step, int direction) {
  if (step > 0) {
    if (direction == LEFT) {
      fprintf(stdout, "\033[%dD", step);
    } else if (direction == RIGHT) {
      fprintf(stdout, "\033[%dC", step);
    } else if (direction == UP) {
      fprintf(stdout, "\033[%dA", step);
    } else if (direction == DOWN) {
      fprintf(stdout, "\033[%dB", step);
    }
    fflush(stdout);
  }
}
