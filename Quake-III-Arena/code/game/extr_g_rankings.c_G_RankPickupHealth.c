
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ warmupTime; } ;


 int QGR_KEY_HEALTH ;
 int QGR_KEY_HEALTH_25 ;
 int QGR_KEY_HEALTH_5 ;
 int QGR_KEY_HEALTH_50 ;
 int QGR_KEY_HEALTH_MEGA ;
 int QGR_KEY_HEALTH_TOTAL ;
 TYPE_1__ level ;
 int trap_RankReportInt (int,int,int ,int,int) ;

void G_RankPickupHealth( int self, int quantity )
{
 if( level.warmupTime != 0 )
 {

  return;
 }

 trap_RankReportInt( self, -1, QGR_KEY_HEALTH, 1, 1 );
 trap_RankReportInt( self, -1, QGR_KEY_HEALTH_TOTAL, quantity, 1 );

 switch( quantity )
 {
 case 5:
  trap_RankReportInt( self, -1, QGR_KEY_HEALTH_5, 1, 1 );
  break;
 case 25:
  trap_RankReportInt( self, -1, QGR_KEY_HEALTH_25, 1, 1 );
  break;
 case 50:
  trap_RankReportInt( self, -1, QGR_KEY_HEALTH_50, 1, 1 );
  break;
 case 100:
  trap_RankReportInt( self, -1, QGR_KEY_HEALTH_MEGA, 1, 1 );
  break;
 default:
  break;
 }
}
