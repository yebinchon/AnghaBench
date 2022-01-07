
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; int member_1; int member_2; int member_3; } ;
typedef TYPE_1__ vec4_t ;
struct TYPE_5__ {int FPS; int (* drawText ) (int,int,double,TYPE_1__,int ,int ,int ,int ) ;} ;


 TYPE_3__* DC ;
 int Menu_Count () ;
 int Menu_Paint (int *,int ) ;
 int * Menus ;
 int captureData ;
 int captureFunc (int ) ;
 scalar_t__ debugMode ;
 int qfalse ;
 int stub1 (int,int,double,TYPE_1__,int ,int ,int ,int ) ;
 int va (char*,int ) ;

void Menu_PaintAll() {
 int i;
 if (captureFunc) {
  captureFunc(captureData);
 }

 for (i = 0; i < Menu_Count(); i++) {
  Menu_Paint(&Menus[i], qfalse);
 }

 if (debugMode) {
  vec4_t v = {1, 1, 1, 1};
  DC->drawText(5, 25, .5, v, va("fps: %f", DC->FPS), 0, 0, 0);
 }
}
