
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int PC; } ;
typedef TYPE_1__ sh2regs_struct ;
struct TYPE_9__ {int debugsh; } ;
typedef TYPE_2__ YuiSh ;
typedef int SH2_struct ;


 int * MSH2 ;
 int SH2GetRegisters (int ,TYPE_1__*) ;
 int SH2UpdateCodeList (TYPE_2__*,int ) ;
 int SH2UpdateRegList (TYPE_2__*,TYPE_1__*) ;
 TYPE_2__* YUI_SH (int ) ;
 int debugPauseLoop () ;
 int yui ;
 int yui_sh_new (int ,int) ;
 int yui_window_pause (int ) ;

__attribute__((used)) static void SH2BreakpointHandler (SH2_struct *context, u32 addr, void *userdata) {

  yui_window_pause(yui);
  {
    sh2regs_struct sh2regs;
    YuiSh* sh2 = YUI_SH(yui_sh_new( yui, context == MSH2 ));

    SH2GetRegisters(sh2->debugsh, &sh2regs);
    SH2UpdateRegList(sh2, &sh2regs);
    SH2UpdateCodeList(sh2, sh2regs.PC);
  }
  debugPauseLoop();
}
