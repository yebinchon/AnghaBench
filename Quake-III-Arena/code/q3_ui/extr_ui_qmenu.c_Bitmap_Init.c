
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; int flags; int left; int right; int top; int bottom; } ;
struct TYPE_5__ {int width; int height; scalar_t__ focusshader; scalar_t__ shader; TYPE_1__ generic; } ;
typedef TYPE_2__ menubitmap_s ;


 int QMF_CENTER_JUSTIFY ;
 int QMF_RIGHT_JUSTIFY ;

void Bitmap_Init( menubitmap_s *b )
{
 int x;
 int y;
 int w;
 int h;

 x = b->generic.x;
 y = b->generic.y;
 w = b->width;
 h = b->height;
 if( w < 0 ) {
  w = -w;
 }
 if( h < 0 ) {
  h = -h;
 }

 if (b->generic.flags & QMF_RIGHT_JUSTIFY)
 {
  x = x - w;
 }
 else if (b->generic.flags & QMF_CENTER_JUSTIFY)
 {
  x = x - w/2;
 }

 b->generic.left = x;
 b->generic.right = x + w;
 b->generic.top = y;
 b->generic.bottom = y + h;

 b->shader = 0;
 b->focusshader = 0;
}
