
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bitstream {int dlength; scalar_t__ doffset; int const* read; scalar_t__ bits; scalar_t__ buffer; } ;


 scalar_t__ malloc (int) ;

struct bitstream* create_bitstream(const void *src, uint32_t srclength)
{
 struct bitstream* bitstream = (struct bitstream*)malloc(sizeof(struct bitstream));
 bitstream->buffer = 0;
 bitstream->bits = 0;
 bitstream->read = (const uint8_t*)src;
 bitstream->doffset = 0;
 bitstream->dlength = srclength;
 return bitstream;
}
