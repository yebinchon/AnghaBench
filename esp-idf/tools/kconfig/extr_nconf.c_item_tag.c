
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mitem {char tag; } ;
typedef int ITEM ;


 int * current_item (int ) ;
 int curses_menu ;
 scalar_t__ item_userptr (int *) ;

__attribute__((used)) static char item_tag(void)
{
 ITEM *cur;
 struct mitem *mcur;

 cur = current_item(curses_menu);
 if (cur == ((void*)0))
  return 0;
 mcur = (struct mitem *) item_userptr(cur);
 return mcur->tag;
}
