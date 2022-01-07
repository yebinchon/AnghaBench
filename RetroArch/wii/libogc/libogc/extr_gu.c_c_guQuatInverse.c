
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float x; float y; float z; float w; } ;
typedef TYPE_1__ guQuaternion ;
typedef float f32 ;



void c_guQuatInverse(guQuaternion *a,guQuaternion *d)
{
 f32 mag,nrminv;

 mag = (a->x*a->x) + (a->y*a->y) + (a->z*a->z) + (a->w*a->w);
 if(mag==0.0f) mag = 1.0f;

 nrminv = 1.0f/mag;
 d->x = -a->x*nrminv;
 d->y = -a->y*nrminv;
 d->z = -a->z*nrminv;
 d->w = a->w*nrminv;
}
