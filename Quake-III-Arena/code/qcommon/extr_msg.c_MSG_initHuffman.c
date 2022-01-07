
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
struct TYPE_3__ {int decompressor; int compressor; } ;


 int Huff_Init (TYPE_1__*) ;
 int Huff_addRef (int *,int ) ;
 TYPE_1__ msgHuff ;
 int msgInit ;
 int* msg_hData ;
 int qtrue ;

void MSG_initHuffman() {
 int i,j;

 msgInit = qtrue;
 Huff_Init(&msgHuff);
 for(i=0;i<256;i++) {
  for (j=0;j<msg_hData[i];j++) {
   Huff_addRef(&msgHuff.compressor, (byte)i);
   Huff_addRef(&msgHuff.decompressor, (byte)i);
  }
 }
}
