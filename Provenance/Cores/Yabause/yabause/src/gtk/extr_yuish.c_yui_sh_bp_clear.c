
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int PC; } ;
typedef TYPE_1__ sh2regs_struct ;
typedef TYPE_2__* gpointer ;
struct TYPE_9__ {int debugsh; } ;
typedef TYPE_2__ YuiSh ;
typedef int GtkWidget ;


 int SH2ClearCodeBreakpoints (int ) ;
 int SH2GetRegisters (int ,TYPE_1__*) ;
 int SH2UpdateBreakpointList (TYPE_2__*) ;
 int SH2UpdateCodeList (TYPE_2__*,int ) ;

void yui_sh_bp_clear(GtkWidget * menuitem, gpointer user_data) {
 YuiSh * sh2 = user_data;

 SH2ClearCodeBreakpoints(sh2->debugsh);

 {
  sh2regs_struct sh2regs;
  SH2GetRegisters(sh2->debugsh, &sh2regs);
  SH2UpdateCodeList(sh2,sh2regs.PC);
  SH2UpdateBreakpointList(sh2);
 }
}
