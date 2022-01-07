
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int header ;
typedef int RFILE ;


 int filestream_write (int *,int *,int) ;
 int form_bmp_header (int *,unsigned int,unsigned int,int) ;

__attribute__((used)) static bool write_header_bmp(RFILE *file, unsigned width, unsigned height, bool is32bpp)
{
   uint8_t header[54];
   form_bmp_header(header, width, height, is32bpp);
   return filestream_write(file, header, sizeof(header)) == sizeof(header);
}
