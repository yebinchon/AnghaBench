
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buttonStep; int regList; int bpList; int uLabel; } ;
typedef TYPE_1__ YuiScudsp ;


 int FALSE ;
 int gtk_widget_set_sensitive (int ,int ) ;

__attribute__((used)) static void yui_scudsp_clear(YuiScudsp * scudsp) {

  gtk_widget_set_sensitive(scudsp->uLabel, FALSE);
  gtk_widget_set_sensitive(scudsp->bpList, FALSE);
  gtk_widget_set_sensitive(scudsp->regList, FALSE);
  gtk_widget_set_sensitive(scudsp->buttonStep, FALSE);
}
