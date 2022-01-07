
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ isagain (int) ;
 scalar_t__ recv (int,char*,size_t,int ) ;

ssize_t socket_receive_all_nonblocking(int fd, bool *error,
      void *data_, size_t size)
{
   const uint8_t *data = (const uint8_t*)data_;
   ssize_t ret = recv(fd, (char*)data, size, 0);

   if (ret > 0)
      return ret;

   if (ret == 0)
   {

      *error = 1;
      return -1;
   }

   if (isagain((int)ret))
      return 0;

   *error = 1;
   return -1;
}
