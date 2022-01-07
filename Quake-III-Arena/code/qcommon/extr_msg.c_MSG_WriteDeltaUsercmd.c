
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int serverTime; int weapon; int buttons; int upmove; int rightmove; int forwardmove; int * angles; } ;
typedef TYPE_1__ usercmd_t ;
typedef int msg_t ;


 int MSG_WriteBits (int *,int,int) ;
 int MSG_WriteDelta (int *,int ,int ,int) ;

void MSG_WriteDeltaUsercmd( msg_t *msg, usercmd_t *from, usercmd_t *to ) {
 if ( to->serverTime - from->serverTime < 256 ) {
  MSG_WriteBits( msg, 1, 1 );
  MSG_WriteBits( msg, to->serverTime - from->serverTime, 8 );
 } else {
  MSG_WriteBits( msg, 0, 1 );
  MSG_WriteBits( msg, to->serverTime, 32 );
 }
 MSG_WriteDelta( msg, from->angles[0], to->angles[0], 16 );
 MSG_WriteDelta( msg, from->angles[1], to->angles[1], 16 );
 MSG_WriteDelta( msg, from->angles[2], to->angles[2], 16 );
 MSG_WriteDelta( msg, from->forwardmove, to->forwardmove, 8 );
 MSG_WriteDelta( msg, from->rightmove, to->rightmove, 8 );
 MSG_WriteDelta( msg, from->upmove, to->upmove, 8 );
 MSG_WriteDelta( msg, from->buttons, to->buttons, 16 );
 MSG_WriteDelta( msg, from->weapon, to->weapon, 8 );
}
