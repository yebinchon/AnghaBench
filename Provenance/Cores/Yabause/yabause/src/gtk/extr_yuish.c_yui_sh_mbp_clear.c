
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* gpointer ;
struct TYPE_5__ {int debugsh; } ;
typedef TYPE_1__ YuiSh ;
typedef int GtkWidget ;


 int SH2ClearMemoryBreakpoints (int ) ;
 int SH2UpdateMemoryBreakpointList (TYPE_1__*) ;

void yui_sh_mbp_clear(GtkWidget * menuitem, gpointer user_data) {
 YuiSh * sh2 = user_data;

 SH2ClearMemoryBreakpoints(sh2->debugsh);

 SH2UpdateMemoryBreakpointList(sh2);
}
