
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_14__ {int origin; } ;
struct TYPE_13__ {int svFlags; } ;
struct TYPE_17__ {int flags; TYPE_5__* client; TYPE_3__ s; TYPE_2__ r; } ;
typedef TYPE_6__ gentity_t ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_15__ {int * persistant; int origin; scalar_t__* powerups; } ;
struct TYPE_12__ {scalar_t__ sessionTeam; } ;
struct TYPE_16__ {TYPE_4__ ps; TYPE_1__ sess; } ;


 int FL_DROPPED_ITEM ;
 int FOFS (char*) ;
 scalar_t__ GT_CTF ;
 TYPE_6__* G_Find (TYPE_6__*,int ,char*) ;
 size_t PERS_PLAYEREVENTS ;
 int PLAYEREVENT_HOLYSHIT ;
 size_t PW_BLUEFLAG ;
 size_t PW_NEUTRALFLAG ;
 size_t PW_REDFLAG ;
 int SVF_NOCLIENT ;
 scalar_t__ TEAM_BLUE ;
 int VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_7__ g_gametype ;

void CheckAlmostCapture( gentity_t *self, gentity_t *attacker ) {
 gentity_t *ent;
 vec3_t dir;
 char *classname;


 if ( self->client->ps.powerups[PW_REDFLAG] ||
  self->client->ps.powerups[PW_BLUEFLAG] ||
  self->client->ps.powerups[PW_NEUTRALFLAG] ) {

  if ( g_gametype.integer == GT_CTF ) {
   if ( self->client->sess.sessionTeam == TEAM_BLUE ) {
    classname = "team_CTF_blueflag";
   }
   else {
    classname = "team_CTF_redflag";
   }
  }
  else {
   if ( self->client->sess.sessionTeam == TEAM_BLUE ) {
    classname = "team_CTF_redflag";
   }
   else {
    classname = "team_CTF_blueflag";
   }
  }
  ent = ((void*)0);
  do
  {
   ent = G_Find(ent, FOFS(classname), classname);
  } while (ent && (ent->flags & FL_DROPPED_ITEM));

  if (ent && !(ent->r.svFlags & SVF_NOCLIENT) ) {

   VectorSubtract( self->client->ps.origin, ent->s.origin, dir );
   if ( VectorLength(dir) < 200 ) {
    self->client->ps.persistant[PERS_PLAYEREVENTS] ^= PLAYEREVENT_HOLYSHIT;
    if ( attacker->client ) {
     attacker->client->ps.persistant[PERS_PLAYEREVENTS] ^= PLAYEREVENT_HOLYSHIT;
    }
   }
  }
 }
}
