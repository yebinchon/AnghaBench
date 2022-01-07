
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ ssize_t ;


 int MSG_NOSIGNAL ;
 scalar_t__ isagain (int) ;
 scalar_t__ send (int,char const*,size_t,int ) ;

ssize_t socket_send_all_nonblocking(int fd, const void *data_, size_t size,
      bool no_signal)
{
   const uint8_t *data = (const uint8_t*)data_;
   ssize_t sent = 0;

   while (size)
   {
      ssize_t ret = send(fd, (const char*)data, size,
            no_signal ? MSG_NOSIGNAL : 0);
      if (ret < 0)
      {
         if (isagain((int)ret))
            break;

         return -1;
      }
      else if (ret == 0)
         break;

      data += ret;
      size -= ret;
      sent += ret;
   }

   return sent;
}
