
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* gpointer ;
typedef scalar_t__ gchar ;
struct TYPE_5__ {int debugsh; } ;
typedef TYPE_1__ YuiSh ;
typedef int GtkEntry ;


 int BREAK_BYTEREAD ;
 int BREAK_BYTEWRITE ;
 int BREAK_LONGREAD ;
 int BREAK_LONGWRITE ;
 int BREAK_WORDREAD ;
 int BREAK_WORDWRITE ;
 int SH2AddMemoryBreakpoint (int ,unsigned int,int) ;
 int SH2UpdateMemoryBreakpointList (TYPE_1__*) ;
 scalar_t__* gtk_entry_get_text (int *) ;
 int gtk_entry_set_text (int *,char*) ;
 int sscanf (scalar_t__ const*,char*,unsigned int*) ;

__attribute__((used)) static void yui_sh_mbp_add(GtkEntry * entry, gpointer user_data) {
 YuiSh * sh2 = user_data;
 const gchar * address_s;
 unsigned int address;

 address_s = gtk_entry_get_text(entry);

 if (*address_s == 0) return;

 sscanf(address_s, "%8X", &address);

 SH2AddMemoryBreakpoint(sh2->debugsh, address, BREAK_BYTEREAD|BREAK_WORDREAD|BREAK_LONGREAD|BREAK_BYTEWRITE|BREAK_WORDWRITE|BREAK_LONGWRITE);

 gtk_entry_set_text(entry, "");

 SH2UpdateMemoryBreakpointList(sh2);
}
