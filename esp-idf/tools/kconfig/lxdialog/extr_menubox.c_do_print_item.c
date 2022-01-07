
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_11__ {int atr; } ;
struct TYPE_10__ {int atr; } ;
struct TYPE_9__ {int atr; } ;
struct TYPE_8__ {int atr; } ;
struct TYPE_7__ {int atr; } ;
struct TYPE_12__ {TYPE_5__ tag_key; TYPE_4__ tag_key_selected; TYPE_3__ item; TYPE_2__ item_selected; TYPE_1__ menubox; } ;


 TYPE_6__ dlg ;
 int first_alpha (char*,char*) ;
 int free (char*) ;
 int item_x ;
 char* malloc (int) ;
 int menu_width ;
 int mvwaddch (int *,int,int,char) ;
 int mvwaddstr (int *,int,int,char*) ;
 int strncpy (char*,char const*,int) ;
 int waddch (int *,char) ;
 int wattrset (int *,int ) ;
 int wclrtoeol (int *) ;
 int wmove (int *,int,int) ;
 int wrefresh (int *) ;

__attribute__((used)) static void do_print_item(WINDOW * win, const char *item, int line_y,
     int selected, int hotkey)
{
 int j;
 char *menu_item = malloc(menu_width + 1);

 strncpy(menu_item, item, menu_width - item_x);
 menu_item[menu_width - item_x] = '\0';
 j = first_alpha(menu_item, "YyNnMmHh");


 wattrset(win, dlg.menubox.atr);
 wmove(win, line_y, 0);







 wclrtoeol(win);

 wattrset(win, selected ? dlg.item_selected.atr : dlg.item.atr);
 mvwaddstr(win, line_y, item_x, menu_item);
 if (hotkey) {
  wattrset(win, selected ? dlg.tag_key_selected.atr
    : dlg.tag_key.atr);
  mvwaddch(win, line_y, item_x + j, menu_item[j]);
 }
 if (selected) {
  wmove(win, line_y, item_x + 1);
 }
 free(menu_item);
 wrefresh(win);
}
