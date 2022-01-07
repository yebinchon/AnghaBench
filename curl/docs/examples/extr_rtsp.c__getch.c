
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_lflag; } ;


 int ECHO ;
 int ICANON ;
 int STDIN_FILENO ;
 int TCSANOW ;
 int getchar () ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static int _getch(void)
{
  struct termios oldt, newt;
  int ch;
  tcgetattr(STDIN_FILENO, &oldt);
  newt = oldt;
  newt.c_lflag &= ~( ICANON | ECHO);
  tcsetattr(STDIN_FILENO, TCSANOW, &newt);
  ch = getchar();
  tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
  return ch;
}
