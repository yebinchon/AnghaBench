
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tween {scalar_t__ duration; scalar_t__ initial_value; scalar_t__ target_value; scalar_t__* subject; int deleted; int * easing; int userdata; int cb; int tag; scalar_t__ running_since; } ;
struct TYPE_4__ {scalar_t__ duration; scalar_t__* subject; scalar_t__ target_value; int easing_enum; int userdata; int cb; int tag; } ;
typedef TYPE_1__ menu_animation_ctx_entry_t ;
struct TYPE_5__ {int initialized; int list; int pending; scalar_t__ in_update; } ;
 TYPE_3__ anim ;
 int da_init (int ) ;
 int da_push (int ,struct tween) ;
 int easing_in_bounce ;
 int easing_in_circ ;
 int easing_in_cubic ;
 int easing_in_expo ;
 int easing_in_out_bounce ;
 int easing_in_out_circ ;
 int easing_in_out_cubic ;
 int easing_in_out_expo ;
 int easing_in_out_quad ;
 int easing_in_out_quart ;
 int easing_in_out_quint ;
 int easing_in_out_sine ;
 int easing_in_quad ;
 int easing_in_quart ;
 int easing_in_quint ;
 int easing_in_sine ;
 int easing_linear ;
 int easing_out_bounce ;
 int easing_out_circ ;
 int easing_out_cubic ;
 int easing_out_expo ;
 int easing_out_in_bounce ;
 int easing_out_in_circ ;
 int easing_out_in_cubic ;
 int easing_out_in_expo ;
 int easing_out_in_quad ;
 int easing_out_in_quart ;
 int easing_out_in_quint ;
 int easing_out_in_sine ;
 int easing_out_quad ;
 int easing_out_quart ;
 int easing_out_quint ;
 int easing_out_sine ;

bool menu_animation_push(menu_animation_ctx_entry_t *entry)
{
   struct tween t;

   t.duration = entry->duration;
   t.running_since = 0;
   t.initial_value = *entry->subject;
   t.target_value = entry->target_value;
   t.subject = entry->subject;
   t.tag = entry->tag;
   t.cb = entry->cb;
   t.userdata = entry->userdata;
   t.easing = ((void*)0);
   t.deleted = 0;

   switch (entry->easing_enum)
   {
      case 144:
         t.easing = &easing_linear;
         break;

      case 148:
         t.easing = &easing_in_quad;
         break;
      case 131:
         t.easing = &easing_out_quad;
         break;
      case 152:
         t.easing = &easing_in_out_quad;
         break;
      case 135:
         t.easing = &easing_out_in_quad;
         break;

      case 158:
         t.easing = &easing_in_cubic;
         break;
      case 141:
         t.easing = &easing_out_cubic;
         break;
      case 154:
         t.easing = &easing_in_out_cubic;
         break;
      case 137:
         t.easing = &easing_out_in_cubic;
         break;

      case 147:
         t.easing = &easing_in_quart;
         break;
      case 130:
         t.easing = &easing_out_quart;
         break;
      case 151:
         t.easing = &easing_in_out_quart;
         break;
      case 134:
         t.easing = &easing_out_in_quart;
         break;

      case 146:
         t.easing = &easing_in_quint;
         break;
      case 129:
         t.easing = &easing_out_quint;
         break;
      case 150:
         t.easing = &easing_in_out_quint;
         break;
      case 133:
         t.easing = &easing_out_in_quint;
         break;

      case 145:
         t.easing = &easing_in_sine;
         break;
      case 128:
         t.easing = &easing_out_sine;
         break;
      case 149:
         t.easing = &easing_in_out_sine;
         break;
      case 132:
         t.easing = &easing_out_in_sine;
         break;

      case 157:
         t.easing = &easing_in_expo;
         break;
      case 140:
         t.easing = &easing_out_expo;
         break;
      case 153:
         t.easing = &easing_in_out_expo;
         break;
      case 136:
         t.easing = &easing_out_in_expo;
         break;

      case 159:
         t.easing = &easing_in_circ;
         break;
      case 142:
         t.easing = &easing_out_circ;
         break;
      case 155:
         t.easing = &easing_in_out_circ;
         break;
      case 138:
         t.easing = &easing_out_in_circ;
         break;

      case 160:
         t.easing = &easing_in_bounce;
         break;
      case 143:
         t.easing = &easing_out_bounce;
         break;
      case 156:
         t.easing = &easing_in_out_bounce;
         break;
      case 139:
         t.easing = &easing_out_in_bounce;
         break;
      default:
         break;
   }


   if (!t.easing || t.duration == 0 || t.initial_value == t.target_value)
      return 0;

   if (!anim.initialized)
   {
      da_init(anim.list);
      da_init(anim.pending);
      anim.initialized = 1;
   }

   if (anim.in_update)
      da_push(anim.pending, t);
   else
      da_push(anim.list, t);

   return 1;
}
