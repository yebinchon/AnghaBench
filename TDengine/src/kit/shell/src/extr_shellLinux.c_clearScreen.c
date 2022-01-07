
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; } ;


 int DOWN ;
 int LEFT ;
 int TIOCGWINSZ ;
 int UP ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int ioctl (int ,int ,struct winsize*) ;
 int positionCursor (int,int ) ;
 int stdout ;

void clearScreen(int ecmd_pos, int cursor_pos) {
  struct winsize w;
  ioctl(0, TIOCGWINSZ, &w);

  int cursor_x = cursor_pos / w.ws_col;
  int cursor_y = cursor_pos % w.ws_col;
  int command_x = ecmd_pos / w.ws_col;
  positionCursor(cursor_y, LEFT);
  positionCursor(command_x - cursor_x, DOWN);
  fprintf(stdout, "\033[2K");
  for (int i = 0; i < command_x; i++) {
    positionCursor(1, UP);
    fprintf(stdout, "\033[2K");
  }
  fflush(stdout);
}
