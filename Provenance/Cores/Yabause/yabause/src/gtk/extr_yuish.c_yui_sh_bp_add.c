
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int PC; } ;
typedef TYPE_1__ sh2regs_struct ;
typedef TYPE_2__* gpointer ;
typedef scalar_t__ gchar ;
struct TYPE_9__ {int debugsh; } ;
typedef TYPE_2__ YuiSh ;
typedef int GtkEntry ;


 int SH2AddCodeBreakpoint (int ,unsigned int) ;
 int SH2GetRegisters (int ,TYPE_1__*) ;
 int SH2UpdateBreakpointList (TYPE_2__*) ;
 int SH2UpdateCodeList (TYPE_2__*,int ) ;
 scalar_t__* gtk_entry_get_text (int *) ;
 int gtk_entry_set_text (int *,char*) ;
 int sscanf (scalar_t__ const*,char*,unsigned int*) ;

__attribute__((used)) static void yui_sh_bp_add(GtkEntry * entry, gpointer user_data) {
 YuiSh * sh2 = user_data;
 const gchar * address_s;
 unsigned int address;

 address_s = gtk_entry_get_text(entry);

 if (*address_s == 0) return;

 sscanf(address_s, "%8X", &address);

 SH2AddCodeBreakpoint(sh2->debugsh, address);

 gtk_entry_set_text(entry, "");

 {
  sh2regs_struct sh2regs;
  SH2GetRegisters(sh2->debugsh, &sh2regs);
  SH2UpdateCodeList(sh2,sh2regs.PC);
  SH2UpdateBreakpointList(sh2);
 }
}
