
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int store; int buttonStep; int regList; int mbpList; int bpList; } ;
typedef TYPE_1__ YuiSh ;


 int FALSE ;
 int GTK_WIDGET (int ) ;
 int gtk_list_store_clear (int ) ;
 int gtk_widget_set_sensitive (int ,int ) ;

__attribute__((used)) static void yui_sh_clear(YuiSh * sh) {

  gtk_widget_set_sensitive(sh->bpList, FALSE);
  gtk_widget_set_sensitive(sh->mbpList, FALSE);
  gtk_widget_set_sensitive(sh->regList, FALSE);
  gtk_widget_set_sensitive(GTK_WIDGET(sh->buttonStep), FALSE);

  gtk_list_store_clear(sh->store);
}
