
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fprintf (int ,char*,char) ;
 int stdout ;

void printChar(char c, int times) {
  for (int i = 0; i < times; i++) {
    fprintf(stdout, "%c", c);
  }
  fflush(stdout);
}
