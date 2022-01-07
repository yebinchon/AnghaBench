
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trap_CIN_DrawCinematic (int) ;
 int trap_CIN_SetExtents (int,float,float,float,float) ;

__attribute__((used)) static void UI_DrawCinematic(int handle, float x, float y, float w, float h) {
 trap_CIN_SetExtents(handle, x, y, w, h);
  trap_CIN_DrawCinematic(handle);
}
