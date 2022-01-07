
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YuiScudsp ;
typedef int GtkWidget ;


 int ScuDspStep () ;
 int yui ;
 int yui_window_invalidate (int ) ;

__attribute__((used)) static void yui_scudsp_step( GtkWidget* widget, YuiScudsp * scudsp ) {

  ScuDspStep();
  yui_window_invalidate( yui );
}
