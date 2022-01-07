
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSAFLUSH ;
 int oldTerm ;
 int tcsetattr (int ,int ,int *) ;

void linux_terminal_flush(void)
{
   tcsetattr(0, TCSAFLUSH, &oldTerm);
}
