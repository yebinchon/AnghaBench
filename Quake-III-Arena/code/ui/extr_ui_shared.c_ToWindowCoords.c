
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {scalar_t__ border; TYPE_1__ rect; scalar_t__ borderSize; } ;
typedef TYPE_2__ windowDef_t ;



void ToWindowCoords(float *x, float *y, windowDef_t *window) {
 if (window->border != 0) {
  *x += window->borderSize;
  *y += window->borderSize;
 }
 *x += window->rect.x;
 *y += window->rect.y;
}
