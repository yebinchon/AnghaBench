
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ warmupTime; } ;


 int QGR_KEY_ARMOR ;
 int QGR_KEY_ARMOR_RED ;
 int QGR_KEY_ARMOR_SHARD ;
 int QGR_KEY_ARMOR_TOTAL ;
 int QGR_KEY_ARMOR_YELLOW ;
 TYPE_1__ level ;
 int trap_RankReportInt (int,int,int ,int,int) ;

void G_RankPickupArmor( int self, int quantity )
{
 if( level.warmupTime != 0 )
 {

  return;
 }

 trap_RankReportInt( self, -1, QGR_KEY_ARMOR, 1, 1 );
 trap_RankReportInt( self, -1, QGR_KEY_ARMOR_TOTAL, quantity, 1 );

 switch( quantity )
 {
 case 5:
  trap_RankReportInt( self, -1, QGR_KEY_ARMOR_SHARD, 1, 1 );
  break;
 case 50:
  trap_RankReportInt( self, -1, QGR_KEY_ARMOR_YELLOW, 1, 1 );
  break;
 case 100:
  trap_RankReportInt( self, -1, QGR_KEY_ARMOR_RED, 1, 1 );
  break;
 default:
  break;
 }
}
