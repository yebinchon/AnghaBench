
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int max_gamma_8; int output_colour_type; int output_bit_depth; scalar_t__ unpacked; int const* transform_list; TYPE_2__* pm; int this; } ;
typedef TYPE_1__ transform_display ;
typedef int png_uint_32 ;
struct TYPE_7__ {int use_update_info; int this; } ;
typedef TYPE_2__ png_modifier ;
typedef int image_transform ;


 int do_read_interlace ;
 int memset (TYPE_1__*,int ,int) ;
 int standard_display_init (int *,int *,int ,int ,int ) ;

__attribute__((used)) static void
transform_display_init(transform_display *dp, png_modifier *pm, png_uint_32 id,
    const image_transform *transform_list)
{
   memset(dp, 0, sizeof *dp);


   standard_display_init(&dp->this, &pm->this, id, do_read_interlace,
      pm->use_update_info);


   dp->pm = pm;
   dp->transform_list = transform_list;
   dp->max_gamma_8 = 16;


   dp->output_colour_type = 255;
   dp->output_bit_depth = 255;
   dp->unpacked = 0;
}
