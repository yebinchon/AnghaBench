
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* data; int size; } ;
typedef TYPE_1__ ucvector ;


 int ucvector_push_back (TYPE_1__*,unsigned char) ;

__attribute__((used)) static void addBitToStream(size_t* bitpointer, ucvector* bitstream, unsigned char bit)
{

  if((*bitpointer) % 8 == 0) ucvector_push_back(bitstream, (unsigned char)0);

  (bitstream->data[bitstream->size - 1]) |= (bit << ((*bitpointer) & 0x7));
  (*bitpointer)++;
}
