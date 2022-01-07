
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YuiWindow ;
typedef int GtkWidget ;


 int * GTK_WIDGET (int ) ;
 int TRUE ;
 int YUI_SH (int ) ;
 int yui_msh ;
 int yui_sh_new (int *,int ) ;

GtkWidget * yui_msh_new(YuiWindow * y) {
  return GTK_WIDGET( yui_msh = YUI_SH(yui_sh_new( y, TRUE )) );
}
