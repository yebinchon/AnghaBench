
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clean_items () ;
 int curses_menu ;
 int unpost_menu (int ) ;

__attribute__((used)) static void reset_menu(void)
{
 unpost_menu(curses_menu);
 clean_items();
}
