
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int current_gamma; TYPE_2__* current_encoding; } ;
typedef TYPE_1__ png_modifier ;
struct TYPE_7__ {int gamma; } ;
typedef TYPE_2__ color_encoding ;


 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
modifier_current_encoding(const png_modifier *pm, color_encoding *ce)
{
   if (pm->current_encoding != 0)
      *ce = *pm->current_encoding;

   else
      memset(ce, 0, sizeof *ce);

   ce->gamma = pm->current_gamma;
}
