
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_6__ {int* data; size_t readcount; int bit; scalar_t__ oob; } ;
typedef TYPE_2__ msg_t ;
struct TYPE_5__ {int tree; } ;
struct TYPE_7__ {TYPE_1__ decompressor; } ;


 int Com_Error (int ,char*,int) ;
 int ERR_DROP ;
 int Huff_getBit (int*,int*) ;
 int Huff_offsetReceive (int ,int*,int*,int*) ;
 int LittleLong (unsigned int) ;
 int LittleShort (unsigned short) ;
 TYPE_3__ msgHuff ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

int MSG_ReadBits( msg_t *msg, int bits ) {
 int value;
 int get;
 qboolean sgn;
 int i, nbits;


 value = 0;

 if ( bits < 0 ) {
  bits = -bits;
  sgn = qtrue;
 } else {
  sgn = qfalse;
 }

 if (msg->oob) {
  if (bits==8) {
   value = msg->data[msg->readcount];
   msg->readcount += 1;
   msg->bit += 8;
  } else if (bits==16) {
   unsigned short *sp = (unsigned short *)&msg->data[msg->readcount];
   value = LittleShort(*sp);
   msg->readcount += 2;
   msg->bit += 16;
  } else if (bits==32) {
   unsigned int *ip = (unsigned int *)&msg->data[msg->readcount];
   value = LittleLong(*ip);
   msg->readcount += 4;
   msg->bit += 32;
  } else {
   Com_Error(ERR_DROP, "can't read %d bits\n", bits);
  }
 } else {
  nbits = 0;
  if (bits&7) {
   nbits = bits&7;
   for(i=0;i<nbits;i++) {
    value |= (Huff_getBit(msg->data, &msg->bit)<<i);
   }
   bits = bits - nbits;
  }
  if (bits) {

   for(i=0;i<bits;i+=8) {
    Huff_offsetReceive (msgHuff.decompressor.tree, &get, msg->data, &msg->bit);

    value |= (get<<(i+nbits));
   }

  }
  msg->readcount = (msg->bit>>3)+1;
 }
 if ( sgn ) {
  if ( value & ( 1 << ( bits - 1 ) ) ) {
   value |= -1 ^ ( ( 1 << bits ) - 1 );
  }
 }

 return value;
}
