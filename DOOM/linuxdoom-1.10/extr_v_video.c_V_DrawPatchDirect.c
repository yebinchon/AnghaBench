
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int patch_t ;


 int V_DrawPatch (int,int,int,int *) ;

void
V_DrawPatchDirect
( int x,
  int y,
  int scrn,
  patch_t* patch )
{
    V_DrawPatch (x,y,scrn, patch);
}
