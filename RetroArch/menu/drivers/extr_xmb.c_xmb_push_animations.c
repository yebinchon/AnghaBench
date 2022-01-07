
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int label_alpha; int alpha; } ;
typedef TYPE_1__ xmb_node_t ;
struct TYPE_6__ {float target_value; uintptr_t tag; int * subject; int * cb; int easing_enum; int duration; } ;
typedef TYPE_2__ menu_animation_ctx_entry_t ;


 int EASING_OUT_QUAD ;
 int XMB_DELAY ;
 int menu_animation_push (TYPE_2__*) ;

__attribute__((used)) static void xmb_push_animations(xmb_node_t *node,
      uintptr_t tag, float ia, float ix)
{
   menu_animation_ctx_entry_t anim_entry;

   anim_entry.duration = XMB_DELAY;
   anim_entry.target_value = ia;
   anim_entry.subject = &node->alpha;
   anim_entry.easing_enum = EASING_OUT_QUAD;
   anim_entry.tag = tag;
   anim_entry.cb = ((void*)0);

   menu_animation_push(&anim_entry);

   anim_entry.subject = &node->label_alpha;

   menu_animation_push(&anim_entry);

   anim_entry.target_value = ix;
   anim_entry.subject = &node->x;

   menu_animation_push(&anim_entry);
}
