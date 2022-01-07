
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_ypixel; int ws_row; int member_3; int member_2; int member_1; int member_0; } ;
struct termios {int c_lflag; int* c_cc; } ;
typedef int old_termios ;


 int ECHO ;
 int ICANON ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int TCSAFLUSH ;
 int TIOCGWINSZ ;
 size_t VMIN ;
 size_t VTIME ;
 int ioctl (int ,int ,struct winsize*) ;
 int memcpy (struct termios*,struct termios*,int) ;
 int printf (char*,...) ;
 int scanf (char*,int*,int*) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int wait_stdin (int) ;

__attribute__((used)) static void scroll_on_demand(int pixelheight)
{







   int row = 0;
   int col = 0;
   int cellheight;
   int scroll;
   printf("\033[H\0337");

}
