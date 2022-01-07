
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gpointer ;
typedef int gboolean ;
struct TYPE_4__ {int address; int wLine; } ;
typedef TYPE_1__ YuiMem ;
typedef int GtkWidget ;


 int TRUE ;
 int yui_mem_update (TYPE_1__*) ;

__attribute__((used)) static gboolean yui_mem_pageup_pressed(GtkWidget *w, gpointer func, gpointer data, gpointer data2, YuiMem *ym) {

  ym->address -= 2*ym->wLine;
  yui_mem_update(ym);

  return TRUE;
}
