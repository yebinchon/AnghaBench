
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int digits; int max_state; void* align; } ;
struct TYPE_10__ {void* align; int * string; } ;
struct TYPE_9__ {int loaded; int alpha_idx; int image_idx; int * alpha_file; int * file; } ;
struct TYPE_8__ {int index; } ;
struct TYPE_12__ {TYPE_4__ counter; TYPE_3__ text; TYPE_2__ image; TYPE_1__ screen; } ;
struct TYPE_13__ {int type; int enabled_state; TYPE_5__ attr; int color; int orientation; int render_bounds; int bounds; } ;
typedef TYPE_6__ component_t ;
typedef int comp_type_t ;
 int VIDEO_LAYOUT_ROT0 ;
 void* VIDEO_LAYOUT_TEXT_ALIGN_CENTER ;
 int make_bounds () ;
 int make_bounds_unit () ;
 int make_color_white () ;

void component_init(component_t *comp, comp_type_t type)
{
   comp->type = type;
   comp->bounds = make_bounds();
   comp->render_bounds = make_bounds_unit();
   comp->orientation = VIDEO_LAYOUT_ROT0;
   comp->color = make_color_white();
   comp->enabled_state = -1;

   switch (comp->type)
   {
      case 128:
         break;
      case 130:
         comp->attr.screen.index = 0;
         break;
      case 132:
         break;
      case 143:
         break;
      case 139:
         comp->attr.image.file = ((void*)0);
         comp->attr.image.alpha_file = ((void*)0);
         comp->attr.image.image_idx = 0;
         comp->attr.image.alpha_idx = 0;
         comp->attr.image.loaded = 0;
         break;
      case 129:
         comp->attr.text.string = ((void*)0);
         comp->attr.text.align = VIDEO_LAYOUT_TEXT_ALIGN_CENTER;
         break;
      case 144:
         comp->attr.counter.digits = 2;
         comp->attr.counter.max_state = 999;
         comp->attr.counter.align = VIDEO_LAYOUT_TEXT_ALIGN_CENTER;
         break;
      case 140:
         break;
      case 142:
         break;
      case 141:
         break;
      case 134:
         break;
      case 133:
         break;
      case 138:
         break;
      case 137:
         break;
      case 136:
         break;
      case 135:
         break;
      case 131:
         break;
   }
}
