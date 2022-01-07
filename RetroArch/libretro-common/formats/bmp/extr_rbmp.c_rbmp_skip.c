
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int img_buffer; int img_buffer_end; } ;
typedef TYPE_1__ rbmp_context ;



__attribute__((used)) static void rbmp_skip(rbmp_context *s, int n)
{
   if (n < 0)
   {
      s->img_buffer = s->img_buffer_end;
      return;
   }

   s->img_buffer += n;
}
