
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* item; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_4__ {scalar_t__ giTag; } ;


 int FLAG_DROPPED ;
 scalar_t__ PW_BLUEFLAG ;
 scalar_t__ PW_NEUTRALFLAG ;
 scalar_t__ PW_REDFLAG ;
 int TEAM_BLUE ;
 int TEAM_FREE ;
 int TEAM_RED ;
 int Team_SetFlagStatus (int ,int ) ;

void Team_CheckDroppedItem( gentity_t *dropped ) {
 if( dropped->item->giTag == PW_REDFLAG ) {
  Team_SetFlagStatus( TEAM_RED, FLAG_DROPPED );
 }
 else if( dropped->item->giTag == PW_BLUEFLAG ) {
  Team_SetFlagStatus( TEAM_BLUE, FLAG_DROPPED );
 }
 else if( dropped->item->giTag == PW_NEUTRALFLAG ) {
  Team_SetFlagStatus( TEAM_FREE, FLAG_DROPPED );
 }
}
