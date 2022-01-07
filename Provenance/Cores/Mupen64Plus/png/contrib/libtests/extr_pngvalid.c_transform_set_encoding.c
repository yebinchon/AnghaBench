
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int chrm_mod; int gama_mod; int srgb_mod; TYPE_2__* pm; } ;
typedef TYPE_1__ transform_display ;
struct TYPE_11__ {scalar_t__ current_encoding; int current_gamma; } ;
typedef TYPE_2__ png_modifier ;


 int PNG_sRGB_INTENT_ABSOLUTE ;
 int chrm_modification_init (int *,TYPE_2__*,scalar_t__) ;
 int gama_modification_init (int *,TYPE_2__*,int ) ;
 scalar_t__ modifier_color_encoding_is_sRGB (TYPE_2__*) ;
 scalar_t__ modifier_color_encoding_is_set (TYPE_2__*) ;
 int modifier_set_encoding (TYPE_2__*) ;
 int srgb_modification_init (int *,TYPE_2__*,int ) ;

__attribute__((used)) static void
transform_set_encoding(transform_display *this)
{



   png_modifier *pm = this->pm;

   modifier_set_encoding(pm);

   if (modifier_color_encoding_is_set(pm))
   {
      if (modifier_color_encoding_is_sRGB(pm))
         srgb_modification_init(&this->srgb_mod, pm, PNG_sRGB_INTENT_ABSOLUTE);

      else
      {

         gama_modification_init(&this->gama_mod, pm, pm->current_gamma);

         if (pm->current_encoding != 0)
            chrm_modification_init(&this->chrm_mod, pm, pm->current_encoding);
      }
   }
}
