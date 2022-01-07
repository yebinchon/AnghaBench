
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sfxHandle_t ;
struct TYPE_4__ {scalar_t__ (* key ) (int) ;} ;
struct TYPE_3__ {TYPE_2__* activemenu; } ;


 int CHAN_LOCAL_SOUND ;
 scalar_t__ Menu_DefaultKey (TYPE_2__*,int) ;
 scalar_t__ menu_null_sound ;
 scalar_t__ stub1 (int) ;
 int trap_S_StartLocalSound (scalar_t__,int ) ;
 TYPE_1__ uis ;

void UI_KeyEvent( int key, int down ) {
 sfxHandle_t s;

 if (!uis.activemenu) {
  return;
 }

 if (!down) {
  return;
 }

 if (uis.activemenu->key)
  s = uis.activemenu->key( key );
 else
  s = Menu_DefaultKey( uis.activemenu, key );

 if ((s > 0) && (s != menu_null_sound))
  trap_S_StartLocalSound( s, CHAN_LOCAL_SOUND );
}
