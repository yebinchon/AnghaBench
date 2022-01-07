
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ warmupTime; } ;


 int QGR_KEY_FLAG_CAPTURE ;
 TYPE_1__ level ;
 int trap_RankReportInt (int,int,int ,int,int) ;

void G_RankCapture( int self )
{
 if( level.warmupTime != 0 )
 {

  return;
 }

 trap_RankReportInt( self, -1, QGR_KEY_FLAG_CAPTURE, 1, 1 );
}
