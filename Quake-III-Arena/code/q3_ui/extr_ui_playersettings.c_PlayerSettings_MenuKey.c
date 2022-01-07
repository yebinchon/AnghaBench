
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_2__ {int menu; } ;


 int K_ESCAPE ;
 int K_MOUSE2 ;
 int Menu_DefaultKey (int *,int) ;
 int PlayerSettings_SaveChanges () ;
 TYPE_1__ s_playersettings ;

__attribute__((used)) static sfxHandle_t PlayerSettings_MenuKey( int key ) {
 if( key == K_MOUSE2 || key == K_ESCAPE ) {
  PlayerSettings_SaveChanges();
 }
 return Menu_DefaultKey( &s_playersettings.menu, key );
}
