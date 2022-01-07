
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int targetName ;
typedef int gender_t ;
struct TYPE_12__ {int otherEntityNum; int otherEntityNum2; int eventParm; } ;
typedef TYPE_3__ entityState_t ;
struct TYPE_13__ {int gender; } ;
typedef TYPE_4__ clientInfo_t ;
typedef int attackerName ;
struct TYPE_17__ {char* killerName; TYPE_2__* snap; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {scalar_t__ gametype; TYPE_4__* clientinfo; } ;
struct TYPE_10__ {int clientNum; scalar_t__* persistant; } ;
struct TYPE_11__ {TYPE_1__ ps; } ;


 int BIGCHAR_WIDTH ;
 int CG_CenterPrint (char*,double,int ) ;
 char* CG_ConfigString (scalar_t__) ;
 int CG_Error (char*) ;
 int CG_PlaceString (scalar_t__) ;
 int CG_Printf (char*,char*,...) ;
 scalar_t__ CS_PLAYERS ;
 int ENTITYNUM_WORLD ;
 int GENDER_FEMALE ;
 int GENDER_NEUTER ;
 scalar_t__ GT_TEAM ;
 char* Info_ValueForKey (char const*,char*) ;
 int MAX_CLIENTS ;
 size_t PERS_RANK ;
 size_t PERS_SCORE ;
 int Q_strncpyz (char*,char*,int) ;
 double SCREEN_HEIGHT ;
 int S_COLOR_WHITE ;
 TYPE_8__ cg ;
 TYPE_7__ cg_cameraOrbit ;
 TYPE_6__ cg_singlePlayerActive ;
 TYPE_5__ cgs ;
 int strcat (char*,int ) ;
 int strcpy (char*,char*) ;
 char* va (char*,char*,...) ;

__attribute__((used)) static void CG_Obituary( entityState_t *ent ) {
 int mod;
 int target, attacker;
 char *message;
 char *message2;
 const char *targetInfo;
 const char *attackerInfo;
 char targetName[32];
 char attackerName[32];
 gender_t gender;
 clientInfo_t *ci;

 target = ent->otherEntityNum;
 attacker = ent->otherEntityNum2;
 mod = ent->eventParm;

 if ( target < 0 || target >= MAX_CLIENTS ) {
  CG_Error( "CG_Obituary: target out of range" );
 }
 ci = &cgs.clientinfo[target];

 if ( attacker < 0 || attacker >= MAX_CLIENTS ) {
  attacker = ENTITYNUM_WORLD;
  attackerInfo = ((void*)0);
 } else {
  attackerInfo = CG_ConfigString( CS_PLAYERS + attacker );
 }

 targetInfo = CG_ConfigString( CS_PLAYERS + target );
 if ( !targetInfo ) {
  return;
 }
 Q_strncpyz( targetName, Info_ValueForKey( targetInfo, "n" ), sizeof(targetName) - 2);
 strcat( targetName, S_COLOR_WHITE );

 message2 = "";



 switch( mod ) {
 case 132:
  message = "suicides";
  break;
 case 151:
  message = "cratered";
  break;
 case 152:
  message = "was squished";
  break;
 case 128:
  message = "sank like a rock";
  break;
 case 133:
  message = "melted";
  break;
 case 144:
  message = "does a back flip into the lava";
  break;
 case 131:
  message = "saw the light";
  break;
 case 129:
  message = "was in the wrong place";
  break;
 default:
  message = ((void*)0);
  break;
 }

 if (attacker == target) {
  gender = ci->gender;
  switch (mod) {





  case 147:
   if ( gender == GENDER_FEMALE )
    message = "tripped on her own grenade";
   else if ( gender == GENDER_NEUTER )
    message = "tripped on its own grenade";
   else
    message = "tripped on his own grenade";
   break;
  case 135:
   if ( gender == GENDER_FEMALE )
    message = "blew herself up";
   else if ( gender == GENDER_NEUTER )
    message = "blew itself up";
   else
    message = "blew himself up";
   break;
  case 139:
   if ( gender == GENDER_FEMALE )
    message = "melted herself";
   else if ( gender == GENDER_NEUTER )
    message = "melted itself";
   else
    message = "melted himself";
   break;
  case 154:
   message = "should have used a smaller gun";
   break;
  default:
   if ( gender == GENDER_FEMALE )
    message = "killed herself";
   else if ( gender == GENDER_NEUTER )
    message = "killed itself";
   else
    message = "killed himself";
   break;
  }
 }

 if (message) {
  CG_Printf( "%s %s.\n", targetName, message);
  return;
 }


 if ( attacker == cg.snap->ps.clientNum ) {
  char *s;

  if ( cgs.gametype < GT_TEAM ) {
   s = va("You fragged %s\n%s place with %i", targetName,
    CG_PlaceString( cg.snap->ps.persistant[PERS_RANK] + 1 ),
    cg.snap->ps.persistant[PERS_SCORE] );
  } else {
   s = va("You fragged %s", targetName );
  }





  CG_CenterPrint( s, SCREEN_HEIGHT * 0.30, BIGCHAR_WIDTH );



 }


 if ( !attackerInfo ) {
  attacker = ENTITYNUM_WORLD;
  strcpy( attackerName, "noname" );
 } else {
  Q_strncpyz( attackerName, Info_ValueForKey( attackerInfo, "n" ), sizeof(attackerName) - 2);
  strcat( attackerName, S_COLOR_WHITE );

  if ( target == cg.snap->ps.clientNum ) {
   Q_strncpyz( cg.killerName, attackerName, sizeof( cg.killerName ) );
  }
 }

 if ( attacker != ENTITYNUM_WORLD ) {
  switch (mod) {
  case 149:
   message = "was caught by";
   break;
  case 150:
   message = "was pummeled by";
   break;
  case 142:
   message = "was machinegunned by";
   break;
  case 134:
   message = "was gunned down by";
   break;
  case 148:
   message = "ate";
   message2 = "'s grenade";
   break;
  case 147:
   message = "was shredded by";
   message2 = "'s shrapnel";
   break;
  case 136:
   message = "ate";
   message2 = "'s rocket";
   break;
  case 135:
   message = "almost dodged";
   message2 = "'s rocket";
   break;
  case 140:
   message = "was melted by";
   message2 = "'s plasmagun";
   break;
  case 139:
   message = "was melted by";
   message2 = "'s plasmagun";
   break;
  case 137:
   message = "was railed by";
   break;
  case 143:
   message = "was electrocuted by";
   break;
  case 155:
  case 154:
   message = "was blasted by";
   message2 = "'s BFG";
   break;
  case 130:
   message = "tried to invade";
   message2 = "'s personal space";
   break;
  default:
   message = "was killed by";
   break;
  }

  if (message) {
   CG_Printf( "%s %s %s%s\n",
    targetName, message, attackerName, message2);
   return;
  }
 }


 CG_Printf( "%s died.\n", targetName );
}
