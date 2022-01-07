
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* y; void* x; } ;
struct TYPE_6__ {void* y; void* x; } ;
struct TYPE_8__ {TYPE_2__ b; TYPE_1__ a; } ;
typedef TYPE_3__ mline_t ;
typedef scalar_t__ fixed_t ;
typedef int angle_t ;


 int AM_drawMline (TYPE_3__*,int) ;
 int AM_rotate (void**,void**,int ) ;
 void* FixedMul (scalar_t__,void*) ;

void
AM_drawLineCharacter
( mline_t* lineguy,
  int lineguylines,
  fixed_t scale,
  angle_t angle,
  int color,
  fixed_t x,
  fixed_t y )
{
    int i;
    mline_t l;

    for (i=0;i<lineguylines;i++)
    {
 l.a.x = lineguy[i].a.x;
 l.a.y = lineguy[i].a.y;

 if (scale)
 {
     l.a.x = FixedMul(scale, l.a.x);
     l.a.y = FixedMul(scale, l.a.y);
 }

 if (angle)
     AM_rotate(&l.a.x, &l.a.y, angle);

 l.a.x += x;
 l.a.y += y;

 l.b.x = lineguy[i].b.x;
 l.b.y = lineguy[i].b.y;

 if (scale)
 {
     l.b.x = FixedMul(scale, l.b.x);
     l.b.y = FixedMul(scale, l.b.y);
 }

 if (angle)
     AM_rotate(&l.b.x, &l.b.y, angle);

 l.b.x += x;
 l.b.y += y;

 AM_drawMline(&l, color);
    }
}
