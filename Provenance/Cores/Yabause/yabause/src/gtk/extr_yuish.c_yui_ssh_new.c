
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YuiWindow ;
typedef int GtkWidget ;


 int FALSE ;
 int * GTK_WIDGET (int ) ;
 int YUI_SH (int ) ;
 int yui_sh_new (int *,int ) ;
 int yui_ssh ;

GtkWidget * yui_ssh_new(YuiWindow * y) {
  return GTK_WIDGET( yui_ssh = YUI_SH(yui_sh_new( y, FALSE )) );
}
