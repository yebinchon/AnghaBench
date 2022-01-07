
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Menu_CloseCinematics (int *) ;
 int * Menus ;
 int menuCount ;

__attribute__((used)) static void Display_CloseCinematics() {
 int i;
 for (i = 0; i < menuCount; i++) {
  Menu_CloseCinematics(&Menus[i]);
 }
}
