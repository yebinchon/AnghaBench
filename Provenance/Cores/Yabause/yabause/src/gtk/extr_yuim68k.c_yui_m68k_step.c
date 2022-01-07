
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YuiM68k ;
typedef int GtkWidget ;


 int M68KStep () ;
 int yui ;
 int yui_window_invalidate (int ) ;

__attribute__((used)) static void yui_m68k_step( GtkWidget* widget, YuiM68k * m68k ) {

  M68KStep();
  yui_window_invalidate( yui );
}
