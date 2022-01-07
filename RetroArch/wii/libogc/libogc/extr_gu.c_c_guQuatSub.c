
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ w; scalar_t__ x; scalar_t__ z; scalar_t__ y; } ;
typedef TYPE_1__ guQuaternion ;



void c_guQuatSub(guQuaternion *a,guQuaternion *b,guQuaternion *ab)
{
 ab->x = a->x - b->x;
 ab->y = a->x - b->y;
 ab->z = a->x - b->z;
 ab->w = a->x - b->w;
}
