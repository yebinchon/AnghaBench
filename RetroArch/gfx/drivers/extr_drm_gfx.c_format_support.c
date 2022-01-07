
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* drmModePlanePtr ;
struct TYPE_3__ {unsigned int count_formats; scalar_t__* formats; } ;



__attribute__((used)) static bool format_support(const drmModePlanePtr ovr, uint32_t fmt)
{
   unsigned int i;

   for (i = 0; i < ovr->count_formats; ++i)
   {
      if (ovr->formats[i] == fmt)
         return 1;
   }

   return 0;
}
