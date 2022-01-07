
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_item (int ) ;
 int curses_menu ;
 int item_index (int ) ;

__attribute__((used)) static int curses_item_index(void)
{
 return item_index(current_item(curses_menu));
}
