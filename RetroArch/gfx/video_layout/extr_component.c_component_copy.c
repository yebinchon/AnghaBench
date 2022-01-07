
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int align; int max_state; int digits; } ;
struct TYPE_11__ {int align; void* string; } ;
struct TYPE_10__ {int loaded; int alpha_idx; int image_idx; void* alpha_file; void* file; } ;
struct TYPE_9__ {int index; } ;
struct TYPE_13__ {TYPE_4__ counter; TYPE_3__ text; TYPE_2__ image; TYPE_1__ screen; } ;
struct TYPE_14__ {int type; TYPE_5__ attr; int enabled_state; int color; int orientation; int render_bounds; int bounds; } ;
typedef TYPE_6__ component_t ;
 void* init_string (void*) ;

void component_copy(component_t *comp, const component_t *src)
{
   comp->type = src->type;
   comp->bounds = src->bounds;
   comp->render_bounds = src->render_bounds;
   comp->orientation = src->orientation;
   comp->color = src->color;
   comp->enabled_state = src->enabled_state;

   switch (comp->type)
   {
      case 128:
         break;
      case 130:
         comp->attr.screen.index = src->attr.screen.index;
         break;
      case 132:
         break;
      case 143:
         break;
      case 139:
         comp->attr.image.file = init_string(src->attr.image.file);
         comp->attr.image.alpha_file = init_string(src->attr.image.alpha_file);
         comp->attr.image.image_idx = src->attr.image.image_idx;
         comp->attr.image.alpha_idx = src->attr.image.alpha_idx;
         comp->attr.image.loaded = src->attr.image.loaded;
         break;
      case 129:
         comp->attr.text.string = init_string(src->attr.text.string);
         comp->attr.text.align = src->attr.text.align;
         break;
      case 144:
         comp->attr.counter.digits = src->attr.counter.digits;
         comp->attr.counter.max_state = src->attr.counter.max_state;
         comp->attr.counter.align = src->attr.counter.align;
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
