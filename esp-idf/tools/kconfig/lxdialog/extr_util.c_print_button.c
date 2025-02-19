
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_13__ {int atr; } ;
struct TYPE_12__ {int atr; } ;
struct TYPE_11__ {int atr; } ;
struct TYPE_10__ {int atr; } ;
struct TYPE_9__ {int atr; } ;
struct TYPE_8__ {int atr; } ;
struct TYPE_14__ {TYPE_6__ button_inactive; TYPE_5__ button_active; TYPE_4__ button_label_inactive; TYPE_3__ button_label_active; TYPE_2__ button_key_inactive; TYPE_1__ button_key_active; } ;


 TYPE_7__ dlg ;
 int strspn (char const*,char*) ;
 int waddch (int *,char const) ;
 int waddstr (int *,char*) ;
 int wattrset (int *,int ) ;
 int wmove (int *,int,int) ;

void print_button(WINDOW * win, const char *label, int y, int x, int selected)
{
 int i, temp;

 wmove(win, y, x);
 wattrset(win, selected ? dlg.button_active.atr
   : dlg.button_inactive.atr);
 waddstr(win, "<");
 temp = strspn(label, " ");
 label += temp;
 wattrset(win, selected ? dlg.button_label_active.atr
   : dlg.button_label_inactive.atr);
 for (i = 0; i < temp; i++)
  waddch(win, ' ');
 wattrset(win, selected ? dlg.button_key_active.atr
   : dlg.button_key_inactive.atr);
 waddch(win, label[0]);
 wattrset(win, selected ? dlg.button_label_active.atr
   : dlg.button_label_inactive.atr);
 waddstr(win, (char *)label + 1);
 wattrset(win, selected ? dlg.button_active.atr
   : dlg.button_inactive.atr);
 waddstr(win, ">");
 wmove(win, y, x + temp + 1);
}
