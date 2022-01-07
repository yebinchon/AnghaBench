
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_2__ {int menu; int silenceSound; } ;


 int CHAN_ANNOUNCER ;
 int K_ESCAPE ;
 int K_MOUSE2 ;
 int Menu_DefaultKey (int *,int) ;
 TYPE_1__ skillMenuInfo ;
 int trap_S_StartLocalSound (int ,int ) ;

__attribute__((used)) static sfxHandle_t UI_SPSkillMenu_Key( int key ) {
 if( key == K_MOUSE2 || key == K_ESCAPE ) {
  trap_S_StartLocalSound( skillMenuInfo.silenceSound, CHAN_ANNOUNCER );
 }
 return Menu_DefaultKey( &skillMenuInfo.menu, key );
}
