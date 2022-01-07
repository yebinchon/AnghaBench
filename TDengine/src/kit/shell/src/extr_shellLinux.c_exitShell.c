
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int TCSANOW ;
 int exit (int ) ;
 int oldtio ;
 int tcsetattr (int ,int ,int *) ;

void exitShell() {
  tcsetattr(0, TCSANOW, &oldtio);
  exit(EXIT_SUCCESS);
}
