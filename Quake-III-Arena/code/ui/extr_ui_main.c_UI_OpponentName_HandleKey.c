
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int UI_NextOpponent () ;
 int UI_PriorOpponent () ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean UI_OpponentName_HandleKey(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
  if (key == K_MOUSE2) {
   UI_PriorOpponent();
  } else {
   UI_NextOpponent();
  }
    return qtrue;
  }
  return qfalse;
}
