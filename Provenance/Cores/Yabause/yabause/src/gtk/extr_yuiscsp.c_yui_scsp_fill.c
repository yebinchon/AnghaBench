
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_4__ {int buffer; int cursor; } ;
typedef TYPE_1__ YuiScsp ;


 int ScspSlotDebugStats (int ,int *) ;
 int g_strstrip (int *) ;
 int gtk_text_buffer_set_text (int ,int ,int) ;
 int yui_scsp_clear (TYPE_1__*) ;

void yui_scsp_fill(YuiScsp * scsp) {
 gchar nameTemp[1024];

 yui_scsp_clear(scsp);

 ScspSlotDebugStats(scsp->cursor, nameTemp );

 gtk_text_buffer_set_text(scsp->buffer, g_strstrip(nameTemp), -1);
}
