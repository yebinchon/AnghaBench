
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int maxsize; size_t cursize; int* data; int bit; scalar_t__ oob; int overflowed; } ;
typedef TYPE_1__ msg_t ;
struct TYPE_5__ {int compressor; } ;


 int Com_Error (int ,char*,int) ;
 int ERR_DROP ;
 int Huff_offsetTransmit (int *,int,int*,int*) ;
 int Huff_putBit (int,int*,int*) ;
 unsigned int LittleLong (int) ;
 unsigned short LittleShort (int) ;
 TYPE_2__ msgHuff ;
 int oldsize ;
 int overflows ;
 int qtrue ;

void MSG_WriteBits( msg_t *msg, int value, int bits ) {
 int i;


 oldsize += bits;


 if ( msg->maxsize - msg->cursize < 4 ) {
  msg->overflowed = qtrue;
  return;
 }

 if ( bits == 0 || bits < -31 || bits > 32 ) {
  Com_Error( ERR_DROP, "MSG_WriteBits: bad bits %i", bits );
 }


 if ( bits != 32 ) {
  if ( bits > 0 ) {
   if ( value > ( ( 1 << bits ) - 1 ) || value < 0 ) {
    overflows++;
   }
  } else {
   int r;

   r = 1 << (bits-1);

   if ( value > r - 1 || value < -r ) {
    overflows++;
   }
  }
 }
 if ( bits < 0 ) {
  bits = -bits;
 }
 if (msg->oob) {
  if (bits==8) {
   msg->data[msg->cursize] = value;
   msg->cursize += 1;
   msg->bit += 8;
  } else if (bits==16) {
   unsigned short *sp = (unsigned short *)&msg->data[msg->cursize];
   *sp = LittleShort(value);
   msg->cursize += 2;
   msg->bit += 16;
  } else if (bits==32) {
   unsigned int *ip = (unsigned int *)&msg->data[msg->cursize];
   *ip = LittleLong(value);
   msg->cursize += 4;
   msg->bit += 8;
  } else {
   Com_Error(ERR_DROP, "can't read %d bits\n", bits);
  }
 } else {

  value &= (0xffffffff>>(32-bits));
  if (bits&7) {
   int nbits;
   nbits = bits&7;
   for(i=0;i<nbits;i++) {
    Huff_putBit((value&1), msg->data, &msg->bit);
    value = (value>>1);
   }
   bits = bits - nbits;
  }
  if (bits) {
   for(i=0;i<bits;i+=8) {

    Huff_offsetTransmit (&msgHuff.compressor, (value&0xff), msg->data, &msg->bit);
    value = (value>>8);
   }
  }
  msg->cursize = (msg->bit>>3)+1;

 }
}
