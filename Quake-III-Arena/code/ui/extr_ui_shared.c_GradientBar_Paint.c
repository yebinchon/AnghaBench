
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vec4_t ;
struct TYPE_6__ {int h; int w; int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
struct TYPE_5__ {int gradientBar; } ;
struct TYPE_7__ {int (* setColor ) (int *) ;TYPE_1__ Assets; int (* drawHandlePic ) (int ,int ,int ,int ,int ) ;} ;


 TYPE_4__* DC ;
 int stub1 (int *) ;
 int stub2 (int ,int ,int ,int ,int ) ;
 int stub3 (int *) ;

void GradientBar_Paint(rectDef_t *rect, vec4_t color) {

 DC->setColor( color );
 DC->drawHandlePic(rect->x, rect->y, rect->w, rect->h, DC->Assets.gradientBar);
 DC->setColor( ((void*)0) );
}
