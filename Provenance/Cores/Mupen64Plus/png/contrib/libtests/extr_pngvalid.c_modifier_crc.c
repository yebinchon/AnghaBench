
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uLong ;
typedef scalar_t__ uInt ;
typedef int png_uint_32 ;
typedef scalar_t__ png_bytep ;


 scalar_t__ crc32 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ png_get_uint_32 (scalar_t__) ;
 int png_save_uint_32 (scalar_t__,int ) ;

__attribute__((used)) static void
modifier_crc(png_bytep buffer)
{



   uInt datalen = png_get_uint_32(buffer);
   uLong crc = crc32(0, buffer+4, datalen+4);


   png_save_uint_32(buffer+datalen+8, (png_uint_32)crc);
}
