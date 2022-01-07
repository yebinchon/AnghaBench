
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uLong ;
typedef scalar_t__ uInt ;


 unsigned char const* Z_NULL ;
 scalar_t__ crc32 (scalar_t__,unsigned char const*,scalar_t__) ;
 int fwrite (unsigned char const*,scalar_t__,int,int ) ;
 int put_uLong (scalar_t__) ;
 int stdout ;

void
put_chunk(const unsigned char *chunk, uInt length)
{
   uLong crc;

   put_uLong(length-4);

   fwrite(chunk, length, 1, stdout);

   crc = crc32(0, Z_NULL, 0);
   put_uLong(crc32(crc, chunk, length));
}
