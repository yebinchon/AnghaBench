
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ interlace; } ;
struct TYPE_5__ {scalar_t__ process; TYPE_2__ ihdr; } ;
typedef TYPE_1__ rpng_t ;


 int png_reverse_filter_adam7 (int **,TYPE_2__*,scalar_t__) ;
 int png_reverse_filter_regular_iterate (int **,TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int png_reverse_filter_iterate(rpng_t *rpng, uint32_t **data)
{
   if (!rpng)
      return 0;

   if (rpng->ihdr.interlace && rpng->process)
      return png_reverse_filter_adam7(data, &rpng->ihdr, rpng->process);

   return png_reverse_filter_regular_iterate(data, &rpng->ihdr, rpng->process);
}
