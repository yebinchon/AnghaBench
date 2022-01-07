
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int PC; } ;
typedef TYPE_1__ m68kregs_struct ;
struct TYPE_9__ {int buttonStep; int regList; int bpList; int uLabel; } ;
typedef TYPE_2__ YuiM68k ;


 int M68KGetRegisters (TYPE_1__*) ;
 int TRUE ;
 int gtk_widget_set_sensitive (int ,int ) ;
 int yui_m68k_update_codelist (TYPE_2__*,int ) ;
 int yui_m68k_update_reglist (TYPE_2__*,TYPE_1__*) ;

void yui_m68k_update(YuiM68k * m68k) {
  m68kregs_struct m68kregs;
  M68KGetRegisters(&m68kregs);
  yui_m68k_update_codelist(m68k,m68kregs.PC);
  yui_m68k_update_reglist(m68k, &m68kregs);
  gtk_widget_set_sensitive(m68k->uLabel, TRUE);
  gtk_widget_set_sensitive(m68k->bpList, TRUE);
  gtk_widget_set_sensitive(m68k->regList, TRUE);
  gtk_widget_set_sensitive(m68k->buttonStep, TRUE);
}
