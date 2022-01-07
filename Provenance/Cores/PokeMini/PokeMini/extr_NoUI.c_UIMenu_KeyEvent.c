
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PokeMini_KeypadEvent (int,int) ;

void UIMenu_KeyEvent(int key, int press) {
 if (press) {
  PokeMini_KeypadEvent(key, 1);
 } else {
  PokeMini_KeypadEvent(key, 0);
 }
}
