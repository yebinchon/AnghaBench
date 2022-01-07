
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cursize; int readcount; int bit; int oob; int* data; } ;
typedef TYPE_1__ msg_t ;
typedef int byte ;
struct TYPE_6__ {int challenge; scalar_t__* serverCommands; } ;


 int CL_ENCODE_START ;
 int MAX_RELIABLE_COMMANDS ;
 int MSG_ReadLong (TYPE_1__*) ;
 TYPE_2__ clc ;

__attribute__((used)) static void CL_Netchan_Encode( msg_t *msg ) {
 int serverId, messageAcknowledge, reliableAcknowledge;
 int i, index, srdc, sbit, soob;
 byte key, *string;

 if ( msg->cursize <= CL_ENCODE_START ) {
  return;
 }

        srdc = msg->readcount;
        sbit = msg->bit;
        soob = msg->oob;

        msg->bit = 0;
        msg->readcount = 0;
        msg->oob = 0;

        serverId = MSG_ReadLong(msg);
 messageAcknowledge = MSG_ReadLong(msg);
 reliableAcknowledge = MSG_ReadLong(msg);

        msg->oob = soob;
        msg->bit = sbit;
        msg->readcount = srdc;

 string = (byte *)clc.serverCommands[ reliableAcknowledge & (MAX_RELIABLE_COMMANDS-1) ];
 index = 0;

 key = clc.challenge ^ serverId ^ messageAcknowledge;
 for (i = CL_ENCODE_START; i < msg->cursize; i++) {

  if (!string[index])
   index = 0;
  if (string[index] > 127 || string[index] == '%') {
   key ^= '.' << (i & 1);
  }
  else {
   key ^= string[index] << (i & 1);
  }
  index++;

  *(msg->data + i) = (*(msg->data + i)) ^ key;
 }
}
