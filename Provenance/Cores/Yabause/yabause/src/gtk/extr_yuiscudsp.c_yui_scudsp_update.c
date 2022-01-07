
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int PC; } ;
typedef TYPE_1__ scudspregs_struct ;
struct TYPE_9__ {int buttonStep; int regList; int bpList; int uLabel; } ;
typedef TYPE_2__ YuiScudsp ;


 int ScuDspGetRegisters (TYPE_1__*) ;
 int TRUE ;
 int gtk_widget_set_sensitive (int ,int ) ;
 int yui_scudsp_update_codelist (TYPE_2__*,int ) ;
 int yui_scudsp_update_reglist (TYPE_2__*,TYPE_1__*) ;

void yui_scudsp_update(YuiScudsp * scudsp) {
  scudspregs_struct scudspregs;
  ScuDspGetRegisters(&scudspregs);
  yui_scudsp_update_codelist(scudsp,scudspregs.PC);
  yui_scudsp_update_reglist(scudsp, &scudspregs);
  gtk_widget_set_sensitive(scudsp->uLabel, TRUE);
  gtk_widget_set_sensitive(scudsp->bpList, TRUE);
  gtk_widget_set_sensitive(scudsp->regList, TRUE);
  gtk_widget_set_sensitive(scudsp->buttonStep, TRUE);
}
