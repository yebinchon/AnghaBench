
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ h; scalar_t__ w; } ;
typedef TYPE_1__ stbrp_rect ;



__attribute__((used)) static int rect_height_compare(const void *a, const void *b)
{
   stbrp_rect *p = (stbrp_rect *) a;
   stbrp_rect *q = (stbrp_rect *) b;
   if (p->h > q->h)
      return -1;
   if (p->h < q->h)
      return 1;
   return (p->w > q->w) ? -1 : (p->w < q->w);
}
