
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct subtitle_list {char const* text; struct subtitle_list* next; } ;
struct TYPE_3__ {int atr; } ;
struct TYPE_4__ {struct subtitle_list* subtitles; int * backtitle; TYPE_1__ screen; } ;


 char ACS_HLINE ;
 char ACS_RARROW ;
 int attr_clear (int ,int,int,int ) ;
 TYPE_2__ dlg ;
 int getmaxx (int ) ;
 int getmaxy (int ) ;
 int mvwaddstr (int ,int ,int,char*) ;
 int stdscr ;
 int strlen (char const*) ;
 int waddch (int ,char) ;
 int waddstr (int ,char const*) ;
 int wattrset (int ,int ) ;
 int wmove (int ,int,int) ;
 int wnoutrefresh (int ) ;

void dialog_clear(void)
{
 int lines, columns;

 lines = getmaxy(stdscr);
 columns = getmaxx(stdscr);

 attr_clear(stdscr, lines, columns, dlg.screen.atr);

 if (dlg.backtitle != ((void*)0)) {
  int i, len = 0, skip = 0;
  struct subtitle_list *pos;

  wattrset(stdscr, dlg.screen.atr);
  mvwaddstr(stdscr, 0, 1, (char *)dlg.backtitle);

  for (pos = dlg.subtitles; pos != ((void*)0); pos = pos->next) {

   len += strlen(pos->text) + 3;
  }

  wmove(stdscr, 1, 1);
  if (len > columns - 2) {
   const char *ellipsis = "[...] ";
   waddstr(stdscr, ellipsis);
   skip = len - (columns - 2 - strlen(ellipsis));
  }

  for (pos = dlg.subtitles; pos != ((void*)0); pos = pos->next) {
   if (skip == 0)
    waddch(stdscr, ACS_RARROW);
   else
    skip--;

   if (skip == 0)
    waddch(stdscr, ' ');
   else
    skip--;

   if (skip < strlen(pos->text)) {
    waddstr(stdscr, pos->text + skip);
    skip = 0;
   } else
    skip -= strlen(pos->text);

   if (skip == 0)
    waddch(stdscr, ' ');
   else
    skip--;
  }

  for (i = len + 1; i < columns - 1; i++)
   waddch(stdscr, ACS_HLINE);
 }
 wnoutrefresh(stdscr);
}
