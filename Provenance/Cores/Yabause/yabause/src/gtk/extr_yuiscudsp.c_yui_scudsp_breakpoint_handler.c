
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int PC; } ;
typedef TYPE_1__ scudspregs_struct ;
typedef int YuiScudsp ;


 int ScuDspGetRegisters (TYPE_1__*) ;
 int * YUI_SCUDSP (int ) ;
 int debugPauseLoop () ;
 int yui ;
 int yui_scudsp_new (int ) ;
 int yui_scudsp_update_codelist (int *,int ) ;
 int yui_scudsp_update_reglist (int *,TYPE_1__*) ;
 int yui_window_pause (int ) ;

__attribute__((used)) static void yui_scudsp_breakpoint_handler (u32 addr) {

  yui_window_pause(yui);
  {
    scudspregs_struct scudspregs;
    YuiScudsp* scudsp = YUI_SCUDSP(yui_scudsp_new( yui ));

    ScuDspGetRegisters(&scudspregs);
    yui_scudsp_update_reglist(scudsp, &scudspregs);
    yui_scudsp_update_codelist(scudsp, scudspregs.PC);
  }
  debugPauseLoop();
}
