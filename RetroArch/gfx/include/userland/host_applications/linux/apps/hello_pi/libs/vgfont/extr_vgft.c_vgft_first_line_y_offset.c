
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VGfloat ;
struct TYPE_9__ {TYPE_3__* ft_face; } ;
typedef TYPE_4__ VGFT_FONT_T ;
struct TYPE_8__ {TYPE_2__* size; } ;
struct TYPE_6__ {int height; } ;
struct TYPE_7__ {TYPE_1__ metrics; } ;


 int float_from_26_6 (int ) ;

VGfloat vgft_first_line_y_offset(VGFT_FONT_T *font) {
   return float_from_26_6(font->ft_face->size->metrics.height);
}
