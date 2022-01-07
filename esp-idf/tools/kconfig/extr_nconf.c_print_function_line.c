
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func; int key_str; } ;


 size_t FUNCTION_HIGHLIGHT ;
 size_t FUNCTION_TEXT ;
 size_t NORMAL ;
 int * attributes ;
 TYPE_1__* function_keys ;
 int function_keys_num ;
 int getmaxy (int ) ;
 int main_window ;
 int mvwprintw (int ,int,int,char*,int ) ;
 int stdscr ;
 scalar_t__ strlen (int ) ;
 int wattrset (int ,int ) ;

__attribute__((used)) static void print_function_line(void)
{
 int i;
 int offset = 1;
 const int skip = 1;
 int lines = getmaxy(stdscr);

 for (i = 0; i < function_keys_num; i++) {
  (void) wattrset(main_window, attributes[FUNCTION_HIGHLIGHT]);
  mvwprintw(main_window, lines-3, offset,
    "%s",
    function_keys[i].key_str);
  (void) wattrset(main_window, attributes[FUNCTION_TEXT]);
  offset += strlen(function_keys[i].key_str);
  mvwprintw(main_window, lines-3,
    offset, "%s",
    function_keys[i].func);
  offset += strlen(function_keys[i].func) + skip;
 }
 (void) wattrset(main_window, attributes[NORMAL]);
}
