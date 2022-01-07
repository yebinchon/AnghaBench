
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pendingWeapon; int weapon; int newModel; int chat; scalar_t__ weaponTimer; int lastWeapon; int currentWeapon; } ;
typedef TYPE_1__ playerInfo_t ;


 int UI_PlayerInfo_SetWeapon (TYPE_1__*,int ) ;
 int UI_RegisterClientModelname (TYPE_1__*,char const*) ;
 int WP_MACHINEGUN ;
 int memset (TYPE_1__*,int ,int) ;
 int qfalse ;
 int qtrue ;

void UI_PlayerInfo_SetModel( playerInfo_t *pi, const char *model ) {
 memset( pi, 0, sizeof(*pi) );
 UI_RegisterClientModelname( pi, model );
 pi->weapon = WP_MACHINEGUN;
 pi->currentWeapon = pi->weapon;
 pi->lastWeapon = pi->weapon;
 pi->pendingWeapon = -1;
 pi->weaponTimer = 0;
 pi->chat = qfalse;
 pi->newModel = qtrue;
 UI_PlayerInfo_SetWeapon( pi, pi->weapon );
}
