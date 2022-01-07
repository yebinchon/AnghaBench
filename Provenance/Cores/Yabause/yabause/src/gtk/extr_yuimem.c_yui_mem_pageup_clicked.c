
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int address; int wLine; } ;
typedef TYPE_1__ YuiMem ;
typedef int GtkToolButton ;


 int yui_mem_update (TYPE_1__*) ;

__attribute__((used)) static void yui_mem_pageup_clicked (GtkToolButton * button, YuiMem * ym) {
  ym->address -= 2*ym->wLine;
  yui_mem_update(ym);
}
