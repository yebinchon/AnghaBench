
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* s; } ;
typedef TYPE_1__ stbi__jpeg ;
struct TYPE_6__ {int img_x; int img_y; int img_n; } ;


 int STBI__SCAN_header ;
 int stbi__decode_jpeg_header (TYPE_1__*,int ) ;
 int stbi__rewind (TYPE_2__*) ;

__attribute__((used)) static int stbi__jpeg_info_raw(stbi__jpeg *j, int *x, int *y, int *comp)
{
   if (!stbi__decode_jpeg_header(j, STBI__SCAN_header)) {
      stbi__rewind( j->s );
      return 0;
   }
   if (x) *x = j->s->img_x;
   if (y) *y = j->s->img_y;
   if (comp) *comp = j->s->img_n >= 3 ? 3 : 1;
   return 1;
}
