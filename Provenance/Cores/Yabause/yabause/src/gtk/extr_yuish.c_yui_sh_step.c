
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int debugsh; } ;
typedef TYPE_1__ YuiSh ;
typedef int GtkWidget ;


 int SH2Step (int ) ;
 int yui ;
 int yui_window_invalidate (int ) ;

__attribute__((used)) static void yui_sh_step( GtkWidget* widget, YuiSh * sh2 ) {

  SH2Step(sh2->debugsh);
  yui_window_invalidate( yui );
}
