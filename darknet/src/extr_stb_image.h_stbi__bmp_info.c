
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int img_x; int img_y; } ;
typedef TYPE_1__ stbi__context ;
struct TYPE_8__ {int all_a; scalar_t__ ma; } ;
typedef TYPE_2__ stbi__bmp_data ;


 void* stbi__bmp_parse_header (TYPE_1__*,TYPE_2__*) ;
 int stbi__rewind (TYPE_1__*) ;

__attribute__((used)) static int stbi__bmp_info(stbi__context *s, int *x, int *y, int *comp)
{
   void *p;
   stbi__bmp_data info;

   info.all_a = 255;
   p = stbi__bmp_parse_header(s, &info);
   stbi__rewind( s );
   if (p == ((void*)0))
      return 0;
   if (x) *x = s->img_x;
   if (y) *y = s->img_y;
   if (comp) *comp = info.ma ? 4 : 3;
   return 1;
}
