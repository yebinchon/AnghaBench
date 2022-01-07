
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char _getch () ;
 int _putch (char) ;

char nb_get_char()
{
   char c = _getch();
   _putch(c);
   return c;
}
