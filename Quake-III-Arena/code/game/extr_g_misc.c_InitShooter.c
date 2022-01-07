
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int weapon; int angles; } ;
struct TYPE_7__ {double random; scalar_t__ nextthink; int think; scalar_t__ target; int movedir; TYPE_1__ s; int use; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_8__ {scalar_t__ time; } ;


 int BG_FindItemForWeapon (int) ;
 int G_SetMovedir (int ,int ) ;
 int InitShooter_Finish ;
 int M_PI ;
 int RegisterItem (int ) ;
 int Use_Shooter ;
 TYPE_4__ level ;
 double sin (int) ;
 int trap_LinkEntity (TYPE_2__*) ;

void InitShooter( gentity_t *ent, int weapon ) {
 ent->use = Use_Shooter;
 ent->s.weapon = weapon;

 RegisterItem( BG_FindItemForWeapon( weapon ) );

 G_SetMovedir( ent->s.angles, ent->movedir );

 if ( !ent->random ) {
  ent->random = 1.0;
 }
 ent->random = sin( M_PI * ent->random / 180 );

 if ( ent->target ) {
  ent->think = InitShooter_Finish;
  ent->nextthink = level.time + 500;
 }
 trap_LinkEntity( ent );
}
