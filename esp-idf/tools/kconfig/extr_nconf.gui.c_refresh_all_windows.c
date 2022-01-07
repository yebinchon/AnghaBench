
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int refresh () ;
 int touchwin (int *) ;
 int update_panels () ;

void refresh_all_windows(WINDOW *main_window)
{
 update_panels();
 touchwin(main_window);
 refresh();
}
