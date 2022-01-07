
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int forwardmove; int rightmove; int upmove; } ;
typedef TYPE_2__ usercmd_t ;
struct TYPE_7__ {TYPE_1__* ps; } ;
struct TYPE_5__ {scalar_t__ speed; } ;


 int abs (int) ;
 TYPE_3__* pm ;
 float sqrt (int) ;

__attribute__((used)) static float PM_CmdScale( usercmd_t *cmd ) {
 int max;
 float total;
 float scale;

 max = abs( cmd->forwardmove );
 if ( abs( cmd->rightmove ) > max ) {
  max = abs( cmd->rightmove );
 }
 if ( abs( cmd->upmove ) > max ) {
  max = abs( cmd->upmove );
 }
 if ( !max ) {
  return 0;
 }

 total = sqrt( cmd->forwardmove * cmd->forwardmove
  + cmd->rightmove * cmd->rightmove + cmd->upmove * cmd->upmove );
 scale = (float)pm->ps->speed * max / ( 127.0 * total );

 return scale;
}
