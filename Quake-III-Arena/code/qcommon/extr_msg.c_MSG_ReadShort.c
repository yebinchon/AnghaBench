
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ readcount; scalar_t__ cursize; } ;
typedef TYPE_1__ msg_t ;


 scalar_t__ MSG_ReadBits (TYPE_1__*,int) ;

int MSG_ReadShort( msg_t *msg ) {
 int c;

 c = (short)MSG_ReadBits( msg, 16 );
 if ( msg->readcount > msg->cursize ) {
  c = -1;
 }

 return c;
}
