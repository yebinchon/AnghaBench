
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* playerViewangles; int* playerMoveangles; int playerWeapon; int playerChat; void* playerTorso; void* playerLegs; int playerinfo; } ;
 void* BOTH_DEATH1 ;
 void* LEGS_BACK ;
 void* LEGS_IDLE ;
 void* LEGS_IDLECR ;
 void* LEGS_JUMP ;
 void* LEGS_RUN ;
 void* LEGS_WALK ;
 size_t PITCH ;
 void* TORSO_ATTACK ;
 void* TORSO_GESTURE ;
 void* TORSO_STAND ;
 int UI_PlayerInfo_SetInfo (int *,void*,void*,int*,int*,int,int ) ;
 int VectorClear (int*) ;
 int WP_BFG ;
 int WP_GAUNTLET ;
 int WP_GRAPPLING_HOOK ;
 int WP_GRENADE_LAUNCHER ;
 int WP_LIGHTNING ;
 int WP_MACHINEGUN ;
 int WP_NONE ;
 int WP_PLASMAGUN ;
 int WP_RAILGUN ;
 int WP_ROCKET_LAUNCHER ;
 int WP_SHOTGUN ;
 size_t YAW ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ s_controls ;

__attribute__((used)) static void Controls_UpdateModel( int anim ) {
 VectorClear( s_controls.playerViewangles );
 VectorClear( s_controls.playerMoveangles );
 s_controls.playerViewangles[YAW] = 180 - 30;
 s_controls.playerMoveangles[YAW] = s_controls.playerViewangles[YAW];
 s_controls.playerLegs = LEGS_IDLE;
 s_controls.playerTorso = TORSO_STAND;
 s_controls.playerWeapon = -1;
 s_controls.playerChat = qfalse;

 switch( anim ) {
 case 143:
  s_controls.playerLegs = LEGS_RUN;
  break;

 case 138:
  s_controls.playerLegs = LEGS_WALK;
  break;

 case 151:
  s_controls.playerLegs = LEGS_BACK;
  break;

 case 146:
  s_controls.playerLegs = LEGS_JUMP;
  break;

 case 149:
  s_controls.playerLegs = LEGS_IDLECR;
  break;

 case 140:
  s_controls.playerViewangles[YAW] += 90;
  break;

 case 139:
  s_controls.playerViewangles[YAW] -= 90;
  break;

 case 142:
  s_controls.playerLegs = LEGS_WALK;
  s_controls.playerMoveangles[YAW] = s_controls.playerViewangles[YAW] + 90;
  break;

 case 141:
  s_controls.playerLegs = LEGS_WALK;
  s_controls.playerMoveangles[YAW] = s_controls.playerViewangles[YAW] - 90;
  break;

 case 144:
  s_controls.playerViewangles[PITCH] = -45;
  break;

 case 145:
  s_controls.playerViewangles[PITCH] = 45;
  break;

 case 137:
  s_controls.playerWeapon = WP_GAUNTLET;
  break;

 case 135:
  s_controls.playerWeapon = WP_MACHINEGUN;
  break;

 case 134:
  s_controls.playerWeapon = WP_SHOTGUN;
  break;

 case 133:
  s_controls.playerWeapon = WP_GRENADE_LAUNCHER;
  break;

 case 132:
  s_controls.playerWeapon = WP_ROCKET_LAUNCHER;
  break;

 case 131:
  s_controls.playerWeapon = WP_LIGHTNING;
  break;

 case 130:
  s_controls.playerWeapon = WP_RAILGUN;
  break;

 case 129:
  s_controls.playerWeapon = WP_PLASMAGUN;
  break;

 case 128:
  s_controls.playerWeapon = WP_BFG;
  break;

 case 136:
  s_controls.playerWeapon = WP_GRAPPLING_HOOK;
  break;

 case 152:
  s_controls.playerTorso = TORSO_ATTACK;
  break;

 case 147:
  s_controls.playerTorso = TORSO_GESTURE;
  break;

 case 148:
  s_controls.playerLegs = BOTH_DEATH1;
  s_controls.playerTorso = BOTH_DEATH1;
  s_controls.playerWeapon = WP_NONE;
  break;

 case 150:
  s_controls.playerChat = qtrue;
  break;

 default:
  break;
 }

 UI_PlayerInfo_SetInfo( &s_controls.playerinfo, s_controls.playerLegs, s_controls.playerTorso, s_controls.playerViewangles, s_controls.playerMoveangles, s_controls.playerWeapon, s_controls.playerChat );
}
