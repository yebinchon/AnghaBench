
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ window; } ;


 TYPE_2__* Menus ;
 int WINDOW_FORCED ;
 int WINDOW_VISIBLE ;
 int menuCount ;

int Display_VisibleMenuCount() {
 int i, count;
 count = 0;
 for (i = 0; i < menuCount; i++) {
  if (Menus[i].window.flags & (WINDOW_FORCED | WINDOW_VISIBLE)) {
   count++;
  }
 }
 return count;
}
