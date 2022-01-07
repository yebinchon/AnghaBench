
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_17__ {int flags; int x; int y; int left; int right; int top; int bottom; } ;
typedef TYPE_12__ menucommon_s ;
struct TYPE_26__ {int flags; } ;
struct TYPE_27__ {TYPE_8__ generic; } ;
struct TYPE_24__ {int flags; } ;
struct TYPE_25__ {TYPE_6__ generic; } ;
struct TYPE_22__ {int flags; } ;
struct TYPE_23__ {TYPE_4__ generic; } ;
struct TYPE_21__ {int nitems; size_t cursor; scalar_t__* items; } ;
struct TYPE_19__ {int flags; } ;
struct TYPE_20__ {TYPE_1__ generic; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_16__ {TYPE_10__ generic; } ;
struct TYPE_18__ {size_t section; TYPE_11__ misc; TYPE_9__ weapons; TYPE_7__ looking; TYPE_5__ movement; TYPE_3__ menu; TYPE_2__ name; scalar_t__ waitingforkey; } ;



 int C_MAX ;



 int QMF_GRAYED ;
 int QMF_HIDDEN ;
 int QMF_HIGHLIGHT ;
 int QMF_HIGHLIGHT_IF_FOCUS ;
 int QMF_INACTIVE ;
 int QMF_PULSEIFFOCUS ;
 int SCREEN_HEIGHT ;
 int SMALLCHAR_HEIGHT ;
 int SMALLCHAR_WIDTH ;
 TYPE_12__*** g_controls ;
 TYPE_13__ s_controls ;

__attribute__((used)) static void Controls_Update( void ) {
 int i;
 int j;
 int y;
 menucommon_s **controls;
 menucommon_s *control;


 for( i = 0; i < C_MAX; i++ ) {
  controls = g_controls[i];

  for( j = 0; (control = controls[j]) ; j++ ) {
   control->flags |= (QMF_HIDDEN|QMF_INACTIVE);
  }
 }

 controls = g_controls[s_controls.section];



 for( j = 0; (control = controls[j]) ; j++ ) {
  control->flags &= ~(QMF_GRAYED|QMF_HIDDEN|QMF_INACTIVE);
 }


 y = ( SCREEN_HEIGHT - j * SMALLCHAR_HEIGHT ) / 2;

 for( j = 0; (control = controls[j]) ; j++, y += SMALLCHAR_HEIGHT ) {
  control->x = 320;
  control->y = y;
  control->left = 320 - 19*SMALLCHAR_WIDTH;
  control->right = 320 + 21*SMALLCHAR_WIDTH;
  control->top = y;
  control->bottom = y + SMALLCHAR_HEIGHT;
 }

 if( s_controls.waitingforkey ) {

  for( i = 0; i < s_controls.menu.nitems; i++ ) {
   ((menucommon_s*)(s_controls.menu.items[i]))->flags |= QMF_GRAYED;
  }


  ((menucommon_s*)(s_controls.menu.items[s_controls.menu.cursor]))->flags &= ~QMF_GRAYED;


  s_controls.name.generic.flags &= ~QMF_GRAYED;

  return;
 }


 for( i = 0; i < s_controls.menu.nitems; i++ ) {
  ((menucommon_s*)(s_controls.menu.items[i]))->flags &= ~QMF_GRAYED;
 }


 s_controls.looking.generic.flags &= ~(QMF_GRAYED|QMF_HIGHLIGHT|QMF_HIGHLIGHT_IF_FOCUS);
 s_controls.movement.generic.flags &= ~(QMF_GRAYED|QMF_HIGHLIGHT|QMF_HIGHLIGHT_IF_FOCUS);
 s_controls.weapons.generic.flags &= ~(QMF_GRAYED|QMF_HIGHLIGHT|QMF_HIGHLIGHT_IF_FOCUS);
 s_controls.misc.generic.flags &= ~(QMF_GRAYED|QMF_HIGHLIGHT|QMF_HIGHLIGHT_IF_FOCUS);

 s_controls.looking.generic.flags |= QMF_PULSEIFFOCUS;
 s_controls.movement.generic.flags |= QMF_PULSEIFFOCUS;
 s_controls.weapons.generic.flags |= QMF_PULSEIFFOCUS;
 s_controls.misc.generic.flags |= QMF_PULSEIFFOCUS;


 switch( s_controls.section ) {
 case 129:
  s_controls.movement.generic.flags &= ~QMF_PULSEIFFOCUS;
  s_controls.movement.generic.flags |= (QMF_HIGHLIGHT|QMF_HIGHLIGHT_IF_FOCUS);
  break;

 case 131:
  s_controls.looking.generic.flags &= ~QMF_PULSEIFFOCUS;
  s_controls.looking.generic.flags |= (QMF_HIGHLIGHT|QMF_HIGHLIGHT_IF_FOCUS);
  break;

 case 128:
  s_controls.weapons.generic.flags &= ~QMF_PULSEIFFOCUS;
  s_controls.weapons.generic.flags |= (QMF_HIGHLIGHT|QMF_HIGHLIGHT_IF_FOCUS);
  break;

 case 130:
  s_controls.misc.generic.flags &= ~QMF_PULSEIFFOCUS;
  s_controls.misc.generic.flags |= (QMF_HIGHLIGHT|QMF_HIGHLIGHT_IF_FOCUS);
  break;
 }
}
