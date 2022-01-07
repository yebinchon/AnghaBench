
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int PC; } ;
typedef TYPE_1__ sh2regs_struct ;
struct TYPE_12__ {TYPE_5__* debugsh; int buttonStep; int regList; int mbpList; int bpList; } ;
typedef TYPE_2__ YuiSh ;
struct TYPE_14__ {int isIdle; } ;
struct TYPE_13__ {int IsSSH2Running; } ;


 int GTK_WIDGET (int ) ;
 int SH2GetRegisters (TYPE_5__*,TYPE_1__*) ;
 int SH2UpdateCodeList (TYPE_2__*,int ) ;
 int SH2UpdateRegList (TYPE_2__*,TYPE_1__*) ;
 TYPE_5__* SSH2 ;
 int TRUE ;
 int gtk_widget_set_sensitive (int ,int) ;
 TYPE_4__ yabsys ;

void yui_sh_update(YuiSh * sh) {
  sh2regs_struct sh2regs;
  SH2GetRegisters(sh->debugsh, &sh2regs);
  SH2UpdateCodeList(sh,sh2regs.PC);
  SH2UpdateRegList(sh, &sh2regs);
  gtk_widget_set_sensitive(sh->bpList, TRUE);
  gtk_widget_set_sensitive(sh->mbpList, TRUE);
  gtk_widget_set_sensitive(sh->regList, TRUE);
  gtk_widget_set_sensitive(GTK_WIDGET(sh->buttonStep),
      !sh->debugsh->isIdle && !(( sh->debugsh == SSH2 )&&( !yabsys.IsSSH2Running )));
}
