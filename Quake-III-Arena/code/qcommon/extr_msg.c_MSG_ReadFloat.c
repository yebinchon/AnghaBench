
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ readcount; scalar_t__ cursize; } ;
typedef TYPE_1__ msg_t ;
typedef int byte ;


 int MSG_ReadBits (TYPE_1__*,int) ;

float MSG_ReadFloat( msg_t *msg ) {
 union {
  byte b[4];
  float f;
  int l;
 } dat;

 dat.l = MSG_ReadBits( msg, 32 );
 if ( msg->readcount > msg->cursize ) {
  dat.f = -1;
 }

 return dat.f;
}
