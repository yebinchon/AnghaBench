
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct huffman_decoder {int* lookup; int maxbits; } ;
struct bitstream {int dummy; } ;
typedef int lookup_value ;


 size_t bitstream_peek (struct bitstream*,int ) ;
 int bitstream_remove (struct bitstream*,int) ;

uint32_t huffman_decode_one(struct huffman_decoder* decoder, struct bitstream* bitbuf)
{

 uint32_t bits = bitstream_peek(bitbuf, decoder->maxbits);


 lookup_value lookup = decoder->lookup[bits];
 bitstream_remove(bitbuf, lookup & 0x1f);


 return lookup >> 5;
}
