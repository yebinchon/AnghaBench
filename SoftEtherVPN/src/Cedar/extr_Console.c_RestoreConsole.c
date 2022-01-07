
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void termios ;


 int Free (void*) ;
 int TCSANOW ;
 int tcsetattr (int ,int ,void*) ;

void RestoreConsole(void *p)
{
 if (p != ((void*)0))
 {
  Free(p);
 }

}
