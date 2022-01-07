
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int TCSANOW ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int oldtio ;
 int stderr ;
 scalar_t__ tcsetattr (int ,int ,int *) ;

void reset_terminal_mode() {
  if (tcsetattr(0, TCSANOW, &oldtio) != 0) {
    fprintf(stderr, "Fail to reset the terminal properties!\n");
    exit(EXIT_FAILURE);
  }
}
