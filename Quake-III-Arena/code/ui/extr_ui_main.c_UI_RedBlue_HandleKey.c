
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int redBlue; } ;


 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ uiInfo ;

__attribute__((used)) static qboolean UI_RedBlue_HandleKey(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
  uiInfo.redBlue ^= 1;
  return qtrue;
 }
 return qfalse;
}
