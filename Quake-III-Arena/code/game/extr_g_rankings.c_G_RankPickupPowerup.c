
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ warmupTime; } ;



 int PW_BLUEFLAG ;




 int PW_REDFLAG ;

 int QGR_KEY_FLAG_PICKUP ;
 int QGR_KEY_FLIGHT ;
 int QGR_KEY_HASTE ;
 int QGR_KEY_INVIS ;
 int QGR_KEY_POWERUP ;
 int QGR_KEY_QUAD ;
 int QGR_KEY_REGEN ;
 int QGR_KEY_SUIT ;
 TYPE_1__ level ;
 int trap_RankReportInt (int,int,int ,int,int) ;

void G_RankPickupPowerup( int self, int powerup )
{
 if( level.warmupTime != 0 )
 {

  return;
 }


 if( (powerup == PW_REDFLAG) || (powerup == PW_BLUEFLAG) )
 {
  trap_RankReportInt( self, -1, QGR_KEY_FLAG_PICKUP, 1, 1 );
  return;
 }

 trap_RankReportInt( self, -1, QGR_KEY_POWERUP, 1, 1 );

 switch( powerup )
 {
 case 129:
  trap_RankReportInt( self, -1, QGR_KEY_QUAD, 1, 1 );
  break;
 case 133:
  trap_RankReportInt( self, -1, QGR_KEY_SUIT, 1, 1 );
  break;
 case 131:
  trap_RankReportInt( self, -1, QGR_KEY_HASTE, 1, 1 );
  break;
 case 130:
  trap_RankReportInt( self, -1, QGR_KEY_INVIS, 1, 1 );
  break;
 case 128:
  trap_RankReportInt( self, -1, QGR_KEY_REGEN, 1, 1 );
  break;
 case 132:
  trap_RankReportInt( self, -1, QGR_KEY_FLIGHT, 1, 1 );
  break;
 default:
  break;
 }
}
