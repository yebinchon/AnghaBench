
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int PC; } ;
typedef TYPE_1__ m68kregs_struct ;
typedef int YuiM68k ;


 int M68KGetRegisters (TYPE_1__*) ;
 int * YUI_M68K (int ) ;
 int debugPauseLoop () ;
 int yui ;
 int yui_m68k_new (int ) ;
 int yui_m68k_update_codelist (int *,int ) ;
 int yui_m68k_update_reglist (int *,TYPE_1__*) ;
 int yui_window_pause (int ) ;

__attribute__((used)) static void yui_m68k_breakpoint_handler (u32 addr) {

  yui_window_pause(yui);
  {
    m68kregs_struct regs;
    YuiM68k* m68k = YUI_M68K(yui_m68k_new( yui ));

    M68KGetRegisters(&regs);
    yui_m68k_update_codelist(m68k,regs.PC);
    yui_m68k_update_reglist(m68k,&regs);
  }
  debugPauseLoop();
}
