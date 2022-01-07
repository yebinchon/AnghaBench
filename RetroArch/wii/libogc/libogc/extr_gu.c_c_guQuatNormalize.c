
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float x; float y; float z; float w; } ;
typedef TYPE_1__ guQuaternion ;
typedef float f32 ;


 float sqrtf (float) ;

void c_guQuatNormalize(guQuaternion *a,guQuaternion *d)
{
 f32 dot,scale;

 dot = (a->x*a->x) + (a->y*a->y) + (a->z*a->z) + (a->w*a->w);
 if(dot==0.0f) d->x = d->y = d->z = d->w = 0.0f;
 else {
  scale = 1.0f/sqrtf(dot);
  d->x = a->x*scale;
  d->y = a->y*scale;
  d->z = a->z*scale;
  d->w = a->w*scale;
 }
}
