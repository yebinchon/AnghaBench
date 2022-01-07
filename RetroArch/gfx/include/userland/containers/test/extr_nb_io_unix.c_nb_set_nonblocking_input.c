
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int* c_cc; int c_lflag; } ;


 int ICANON ;
 int STDIN_FILENO ;
 int TCSANOW ;
 size_t VMIN ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

void nb_set_nonblocking_input(int enable)
{
   struct termios ttystate;


    tcgetattr(STDIN_FILENO, &ttystate);

    if (enable)
    {

        ttystate.c_lflag &= ~ICANON;

        ttystate.c_cc[VMIN] = 1;
    }
    else
    {

        ttystate.c_lflag |= ICANON;
    }


    tcsetattr(STDIN_FILENO, TCSANOW, &ttystate);
}
