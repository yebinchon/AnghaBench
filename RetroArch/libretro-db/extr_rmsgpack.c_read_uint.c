
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int RFILE ;


 int errno ;
 int filestream_read (int *,int *,size_t) ;
 int swap_if_little16 (int ) ;
 int swap_if_little32 (int ) ;
 int swap_if_little64 (int ) ;

__attribute__((used)) static int read_uint(RFILE *fd, uint64_t *out, size_t size)
{
   uint64_t tmp;

   if (filestream_read(fd, &tmp, size) == -1)
      goto error;

   switch (size)
   {
      case 1:
         *out = *(uint8_t *)(&tmp);
         break;
      case 2:
         *out = swap_if_little16((uint16_t)tmp);
         break;
      case 4:
         *out = swap_if_little32((uint32_t)tmp);
         break;
      case 8:
         *out = swap_if_little64(tmp);
         break;
   }
   return 0;

error:
   return -errno;
}
