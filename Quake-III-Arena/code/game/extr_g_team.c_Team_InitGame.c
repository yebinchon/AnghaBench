
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {int redStatus; int blueStatus; int flagStatus; } ;


 int FLAG_ATBASE ;


 int TEAM_BLUE ;
 int TEAM_FREE ;
 int TEAM_RED ;
 int Team_SetFlagStatus (int ,int ) ;
 TYPE_3__ g_gametype ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__ teamgame ;

void Team_InitGame( void ) {
 memset(&teamgame, 0, sizeof teamgame);

 switch( g_gametype.integer ) {
 case 128:
  teamgame.redStatus = teamgame.blueStatus = -1;
  Team_SetFlagStatus( TEAM_RED, FLAG_ATBASE );
  Team_SetFlagStatus( TEAM_BLUE, FLAG_ATBASE );
  break;






 default:
  break;
 }
}
