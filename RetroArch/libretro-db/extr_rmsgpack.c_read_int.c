
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef int RFILE ;


 int errno ;
 int filestream_read (int *,int *,size_t) ;
 int swap_if_little16 (int ) ;
 int swap_if_little32 (int ) ;
 int swap_if_little64 (int ) ;

__attribute__((used)) static int read_int(RFILE *fd, int64_t *out, size_t size)
{
   uint8_t tmp8 = 0;
   uint16_t tmp16;
   uint32_t tmp32;
   uint64_t tmp64;

   if (filestream_read(fd, &tmp64, size) == -1)
      goto error;

   (void)tmp8;

   switch (size)
   {
      case 1:
         *out = *((int8_t *)(&tmp64));
         break;
      case 2:
         tmp16 = swap_if_little16((uint16_t)tmp64);
         *out = *((int16_t *)(&tmp16));
         break;
      case 4:
         tmp32 = swap_if_little32((uint32_t)tmp64);
         *out = *((int32_t *)(&tmp32));
         break;
      case 8:
         tmp64 = swap_if_little64(tmp64);
         *out = *((int64_t *)(&tmp64));
         break;
   }
   return 0;

error:
   return -errno;
}
