
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* png_structrp ;
typedef int png_byte ;
struct TYPE_6__ {size_t index; int blue; int green; int red; } ;
struct TYPE_7__ {int num_trans; int* trans_alpha; int transformations; TYPE_2__ background; TYPE_1__* palette; int flags; } ;
struct TYPE_5__ {int blue; int green; int red; } ;


 int PNG_BACKGROUND_EXPAND ;
 int PNG_COMPOSE ;
 int PNG_ENCODE_ALPHA ;
 int PNG_EXPAND ;
 int PNG_EXPAND_tRNS ;
 int PNG_FLAG_OPTIMIZE_ALPHA ;
 int PNG_INVERT_ALPHA ;

__attribute__((used)) static void
png_init_palette_transformations(png_structrp png_ptr)
{
   int input_has_alpha = 0;
   int input_has_transparency = 0;

   if (png_ptr->num_trans > 0)
   {
      int i;


      for (i=0; i<png_ptr->num_trans; ++i)
      {
         if (png_ptr->trans_alpha[i] == 255)
            continue;
         else if (png_ptr->trans_alpha[i] == 0)
            input_has_transparency = 1;
         else
         {
            input_has_transparency = 1;
            input_has_alpha = 1;
            break;
         }
      }
   }


   if (input_has_alpha == 0)
   {




      png_ptr->transformations &= ~PNG_ENCODE_ALPHA;
      png_ptr->flags &= ~PNG_FLAG_OPTIMIZE_ALPHA;

      if (input_has_transparency == 0)
         png_ptr->transformations &= ~(PNG_COMPOSE | PNG_BACKGROUND_EXPAND);
   }
}
