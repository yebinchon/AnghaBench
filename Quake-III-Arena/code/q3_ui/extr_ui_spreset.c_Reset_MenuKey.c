
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_2__ {int menu; int yes; int no; } ;






 int K_TAB ;
 int Menu_DefaultKey (int *,int) ;
 int QM_ACTIVATED ;
 int Reset_MenuEvent (int *,int ) ;
 TYPE_1__ s_reset ;

__attribute__((used)) static sfxHandle_t Reset_MenuKey( int key ) {
 switch ( key ) {
 case 131:
 case 129:
 case 130:
 case 128:
  key = K_TAB;
  break;

 case 'n':
 case 'N':
  Reset_MenuEvent( &s_reset.no, QM_ACTIVATED );
  break;

 case 'y':
 case 'Y':
  Reset_MenuEvent( &s_reset.yes, QM_ACTIVATED );
  break;
 }

 return Menu_DefaultKey( &s_reset.menu, key );
}
