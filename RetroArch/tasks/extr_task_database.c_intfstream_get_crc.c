
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int intfstream_t ;
typedef scalar_t__ int64_t ;
typedef int buffer ;


 int encoding_crc32 (int ,int *,size_t) ;
 scalar_t__ intfstream_read (int *,int *,int) ;

__attribute__((used)) static int intfstream_get_crc(intfstream_t *fd, uint32_t *crc)
{
   int64_t read = 0;
   uint32_t acc = 0;
   uint8_t buffer[4096];

   while ((read = intfstream_read(fd, buffer, sizeof(buffer))) > 0)
      acc = encoding_crc32(acc, buffer, (size_t)read);

   if (read < 0)
      return 0;

   *crc = acc;

   return 1;
}
