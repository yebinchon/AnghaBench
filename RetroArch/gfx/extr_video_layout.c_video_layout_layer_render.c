
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_9__ ;
typedef struct TYPE_42__ TYPE_8__ ;
typedef struct TYPE_41__ TYPE_7__ ;
typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_13__ ;
typedef struct TYPE_33__ TYPE_12__ ;
typedef struct TYPE_32__ TYPE_11__ ;
typedef struct TYPE_31__ TYPE_10__ ;


struct TYPE_42__ {int (* layer_end ) (TYPE_9__*,int ) ;int (* led_seg ) (TYPE_9__*,int ,int) ;int (* led_dot ) (TYPE_9__*,int,int) ;int (* counter ) (TYPE_9__*,int ) ;int (* text ) (TYPE_9__*,int ) ;int (* image ) (TYPE_9__*,int ,int ) ;int (* ellipse ) (TYPE_9__*) ;int (* rect ) (TYPE_9__*) ;int (* screen ) (TYPE_9__*,int ) ;int (* layer_begin ) (TYPE_9__*) ;} ;
typedef TYPE_8__ video_layout_render_interface_t ;
struct TYPE_43__ {int color; int orientation; int bounds; void* video_driver_frame_data; } ;
typedef TYPE_9__ video_layout_render_info_t ;
struct TYPE_31__ {int elements_count; int blend; TYPE_11__* elements; } ;
typedef TYPE_10__ layer_t ;
struct TYPE_32__ {int o_bind; int state; int components_count; TYPE_12__* components; } ;
typedef TYPE_11__ element_t ;
struct TYPE_40__ {int max_state; } ;
struct TYPE_39__ {int string; } ;
struct TYPE_38__ {int loaded; size_t image_idx; size_t alpha_idx; int alpha_file; int file; } ;
struct TYPE_37__ {int index; } ;
struct TYPE_41__ {TYPE_6__ counter; TYPE_5__ text; TYPE_4__ image; TYPE_3__ screen; } ;
struct TYPE_33__ {int enabled_state; int type; TYPE_7__ attr; int color; int orientation; int render_bounds; } ;
typedef TYPE_12__ component_t ;
struct TYPE_36__ {int value; } ;
struct TYPE_35__ {TYPE_10__* layers; } ;
struct TYPE_34__ {int * images; TYPE_2__* io; TYPE_1__* view; TYPE_8__* render; TYPE_9__ render_info; } ;


 int MIN (int,int ) ;
 int VIDEO_LAYOUT_LED_14 ;
 int VIDEO_LAYOUT_LED_14_SC ;
 int VIDEO_LAYOUT_LED_16 ;
 int VIDEO_LAYOUT_LED_16_SC ;
 int VIDEO_LAYOUT_LED_7 ;
 int VIDEO_LAYOUT_LED_8_GTS1 ;
 int stub1 (TYPE_9__*) ;
 int stub10 (TYPE_9__*,int,int) ;
 int stub11 (TYPE_9__*,int ,int) ;
 int stub12 (TYPE_9__*,int ,int) ;
 int stub13 (TYPE_9__*,int ,int) ;
 int stub14 (TYPE_9__*,int ,int) ;
 int stub15 (TYPE_9__*,int ,int) ;
 int stub16 (TYPE_9__*,int ,int) ;
 int stub17 (TYPE_9__*,int ) ;
 int stub2 (TYPE_9__*,int ) ;
 int stub3 (TYPE_9__*) ;
 int stub4 (TYPE_9__*) ;
 int stub5 (TYPE_9__*,int ,int ) ;
 int stub6 (TYPE_9__*,int ) ;
 int stub7 (TYPE_9__*,int ) ;
 int stub8 (TYPE_9__*,int,int) ;
 int stub9 (TYPE_9__*,int,int) ;
 void* video_layout_load_image (int ) ;
 TYPE_13__* video_layout_state ;

void video_layout_layer_render(void *video_driver_frame_data, int index)
{
   video_layout_render_info_t *info;
   const video_layout_render_interface_t *r;
   layer_t *layer;
   int i, j;

   info = &video_layout_state->render_info;
   r = video_layout_state->render;
   layer = &video_layout_state->view->layers[index];

   info->video_driver_frame_data = video_driver_frame_data;

   r->layer_begin(info);

   for (i = 0; i < layer->elements_count; ++i)
   {
      element_t *elem;
      elem = &layer->elements[i];

      if (elem->o_bind != -1)
         elem->state = video_layout_state->io[elem->o_bind].value;

      for (j = 0; j < elem->components_count; ++j)
      {
         component_t *comp;
         comp = &elem->components[j];

         if (comp->enabled_state != -1)
         {
            if(comp->enabled_state != elem->state)
               continue;
         }

         info->bounds = comp->render_bounds;
         info->orientation = comp->orientation;
         info->color = comp->color;

         switch (comp->type)
         {
         case 128:
            break;
         case 130:
            r->screen(info, comp->attr.screen.index);
            break;
         case 132:
            r->rect(info);
            break;
         case 143:
            r->ellipse(info);
            break;
         case 139:
            if(!comp->attr.image.loaded)
            {
               comp->attr.image.image_idx = video_layout_load_image(comp->attr.image.file);
               if(comp->attr.image.alpha_file)
                  comp->attr.image.alpha_idx = video_layout_load_image(comp->attr.image.alpha_file);
               comp->attr.image.loaded = 1;
            }
            r->image(info,
               video_layout_state->images[comp->attr.image.image_idx],
               video_layout_state->images[comp->attr.image.alpha_idx]);
            break;
         case 129:
            r->text(info, comp->attr.text.string);
            break;
         case 144:
            r->counter(info, MIN(elem->state, comp->attr.counter.max_state));
            break;
         case 140:
            r->led_dot(info, 1, elem->state);
            break;
         case 142:
            r->led_dot(info, 5, elem->state);
            break;
         case 141:
            r->led_dot(info, 8, elem->state);
            break;
         case 134:
            r->led_seg(info, VIDEO_LAYOUT_LED_7, elem->state);
            break;
         case 133:
            r->led_seg(info, VIDEO_LAYOUT_LED_8_GTS1, elem->state);
            break;
         case 138:
            r->led_seg(info, VIDEO_LAYOUT_LED_14, elem->state);
            break;
         case 137:
            r->led_seg(info, VIDEO_LAYOUT_LED_14_SC, elem->state);
            break;
         case 136:
            r->led_seg(info, VIDEO_LAYOUT_LED_16, elem->state);
            break;
         case 135:
            r->led_seg(info, VIDEO_LAYOUT_LED_16_SC, elem->state);
            break;
         case 131:

            break;
         }
      }
   }

   r->layer_end(info, layer->blend);
}
