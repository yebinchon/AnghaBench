
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; int z; } ;
typedef TYPE_1__ guVector ;



void c_guVecCross(guVector *a,guVector *b,guVector *axb)
{
 guVector vTmp;

 vTmp.x = (a->y*b->z)-(a->z*b->y);
 vTmp.y = (a->z*b->x)-(a->x*b->z);
 vTmp.z = (a->x*b->y)-(a->y*b->x);

 axb->x = vTmp.x;
 axb->y = vTmp.y;
 axb->z = vTmp.z;
}
