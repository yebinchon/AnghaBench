
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ gint ;
struct TYPE_4__ {scalar_t__ cursor; } ;
typedef TYPE_1__ YuiVdp1 ;


 scalar_t__ MAX_VDP1_COMMAND ;
 int Vdp1DebugGetCommandNumberName (scalar_t__) ;
 int yui_vdp1_fill (TYPE_1__*) ;

void yui_vdp1_update(YuiVdp1 * vdp1) {
 gint i;
 for(i = 0 ; i < MAX_VDP1_COMMAND ; i++ ) if ( !Vdp1DebugGetCommandNumberName(i)) break;
 vdp1->cursor = 0;
 yui_vdp1_fill(vdp1);
}
