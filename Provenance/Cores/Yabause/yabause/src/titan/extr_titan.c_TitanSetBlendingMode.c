
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* trans; int blend; } ;


 int TITAN_BLEND_ADD ;
 int TITAN_BLEND_BOTTOM ;
 int TitanBlendPixelsAdd ;
 int TitanBlendPixelsBottom ;
 int TitanBlendPixelsTop ;
 void* TitanTransAlpha ;
 void* TitanTransBit ;
 TYPE_1__ tt_context ;

void TitanSetBlendingMode(int blend_mode)
{
   if (blend_mode == TITAN_BLEND_BOTTOM)
   {
      tt_context.blend = TitanBlendPixelsBottom;
      tt_context.trans = TitanTransBit;
   }
   else if (blend_mode == TITAN_BLEND_ADD)
   {
      tt_context.blend = TitanBlendPixelsAdd;
      tt_context.trans = TitanTransBit;
   }
   else
   {
      tt_context.blend = TitanBlendPixelsTop;
      tt_context.trans = TitanTransAlpha;
   }
}
