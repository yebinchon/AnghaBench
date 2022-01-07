
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 int STDIN_FILENO ;
 int isatty (int ) ;
 int oldtio ;
 scalar_t__ tcgetattr (int ,int *) ;

int get_old_terminal_mode(struct termios *tio) {

  if (!isatty(STDIN_FILENO)) {
    return -1;
  }


  if (tcgetattr(0, &oldtio) != 0) {
    return -1;
  }

  return 1;
}
