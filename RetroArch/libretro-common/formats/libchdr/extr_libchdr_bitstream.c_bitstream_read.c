
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bitstream {int dummy; } ;


 int bitstream_peek (struct bitstream*,int) ;
 int bitstream_remove (struct bitstream*,int) ;

uint32_t bitstream_read(struct bitstream* bitstream, int numbits)
{
 uint32_t result = bitstream_peek(bitstream, numbits);
 bitstream_remove(bitstream, numbits);
 return result;
}
