
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windowDef_t ;
struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ rectDef_t ;


 int ToWindowCoords (int *,int *,int *) ;

void Rect_ToWindowCoords(rectDef_t *rect, windowDef_t *window) {
 ToWindowCoords(&rect->x, &rect->y, window);
}
