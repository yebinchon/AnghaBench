
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* bits; } ;
typedef TYPE_1__ format_list ;


 int FORMAT_SET_COUNT ;

__attribute__((used)) static void format_init(format_list *pf)
{
   int i;
   for (i=0; i<FORMAT_SET_COUNT; ++i)
      pf->bits[i] = 0;
}
