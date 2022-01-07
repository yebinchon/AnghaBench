
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ sfxHandle_t ;
struct TYPE_5__ {int (* callback ) (TYPE_2__*,int ) ;} ;
struct TYPE_6__ {TYPE_1__ generic; int curvalue; int numitems; } ;
typedef TYPE_2__ menulist_s ;







 int QM_ACTIVATED ;
 scalar_t__ menu_buzz_sound ;
 scalar_t__ menu_move_sound ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static sfxHandle_t SpinControl_Key( menulist_s *s, int key )
{
 sfxHandle_t sound;

 sound = 0;
 switch (key)
 {
  case 129:
   s->curvalue++;
   if (s->curvalue >= s->numitems)
    s->curvalue = 0;
   sound = menu_move_sound;
   break;

  case 132:
  case 130:
   if (s->curvalue > 0)
   {
    s->curvalue--;
    sound = menu_move_sound;
   }
   else
    sound = menu_buzz_sound;
   break;

  case 131:
  case 128:
   if (s->curvalue < s->numitems-1)
   {
    s->curvalue++;
    sound = menu_move_sound;
   }
   else
    sound = menu_buzz_sound;
   break;
 }

 if ( sound && s->generic.callback )
  s->generic.callback( s, QM_ACTIVATED );

 return (sound);
}
