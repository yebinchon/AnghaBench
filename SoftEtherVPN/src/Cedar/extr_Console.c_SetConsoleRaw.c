
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
typedef void termios ;


 void* Clone (void*,int) ;
 int ECHO ;
 int ICANON ;
 void* Malloc (int ) ;
 int TCSANOW ;
 size_t VMIN ;
 size_t VTIME ;
 int Zero (void*,int) ;
 scalar_t__ tcgetattr (int ,void*) ;
 int tcsetattr (int ,int ,void*) ;

void *SetConsoleRaw()
{
 return Malloc(0);

}
