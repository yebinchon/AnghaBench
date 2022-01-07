
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int readcount; int bit; int oob; int* data; long cursize; } ;
typedef TYPE_1__ msg_t ;
typedef int byte ;
struct TYPE_6__ {int** reliableCommands; int challenge; } ;


 long CL_DECODE_START ;
 int LittleLong (unsigned int) ;
 int MAX_RELIABLE_COMMANDS ;
 long MSG_ReadLong (TYPE_1__*) ;
 TYPE_2__ clc ;

__attribute__((used)) static void CL_Netchan_Decode( msg_t *msg ) {
 long reliableAcknowledge, i, index;
 byte key, *string;
        int srdc, sbit, soob;

        srdc = msg->readcount;
        sbit = msg->bit;
        soob = msg->oob;

        msg->oob = 0;

 reliableAcknowledge = MSG_ReadLong(msg);

        msg->oob = soob;
        msg->bit = sbit;
        msg->readcount = srdc;

 string = clc.reliableCommands[ reliableAcknowledge & (MAX_RELIABLE_COMMANDS-1) ];
 index = 0;

 key = clc.challenge ^ LittleLong( *(unsigned *)msg->data );
 for (i = msg->readcount + CL_DECODE_START; i < msg->cursize; i++) {

  if (!string[index])
   index = 0;
  if (string[index] > 127 || string[index] == '%') {
   key ^= '.' << (i & 1);
  }
  else {
   key ^= string[index] << (i & 1);
  }
  index++;

  *(msg->data + i) = *(msg->data + i) ^ key;
 }
}
