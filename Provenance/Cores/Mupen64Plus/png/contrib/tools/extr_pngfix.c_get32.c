
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int* png_bytep ;



__attribute__((used)) static png_uint_32
get32(png_bytep buffer, int offset)


{
   return
      (buffer[ offset & 7] << 24) +
      (buffer[(offset+1) & 7] << 16) +
      (buffer[(offset+2) & 7] << 8) +
      (buffer[(offset+3) & 7] );
}
