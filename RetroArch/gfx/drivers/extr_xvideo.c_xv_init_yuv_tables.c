
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vtable; int * utable; int * ytable; } ;
typedef TYPE_1__ xv_t ;
typedef int uint8_t ;


 scalar_t__ malloc (int) ;
 int xv_calculate_yuv (int *,int *,int *,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void xv_init_yuv_tables(xv_t *xv)
{
   unsigned i;
   xv->ytable = (uint8_t*)malloc(0x10000);
   xv->utable = (uint8_t*)malloc(0x10000);
   xv->vtable = (uint8_t*)malloc(0x10000);

   for (i = 0; i < 0x10000; i++)
   {

      unsigned r = (i >> 11) & 0x1f;
      unsigned g = (i >> 5) & 0x3f;
      unsigned b = (i >> 0) & 0x1f;
      r = (r << 3) | (r >> 2);
      g = (g << 2) | (g >> 4);
      b = (b << 3) | (b >> 2);

      xv_calculate_yuv(&xv->ytable[i],
            &xv->utable[i], &xv->vtable[i], r, g, b);
   }
}
