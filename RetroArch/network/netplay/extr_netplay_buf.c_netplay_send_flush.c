
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {scalar_t__ end; scalar_t__ start; scalar_t__ data; scalar_t__ bufsz; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ buf_used (struct socket_buffer*) ;
 int socket_send_all_blocking (int,scalar_t__,scalar_t__,int) ;
 scalar_t__ socket_send_all_nonblocking (int,scalar_t__,scalar_t__,int) ;

bool netplay_send_flush(struct socket_buffer *sbuf, int sockfd, bool block)
{
   ssize_t sent;

   if (buf_used(sbuf) == 0)
      return 1;

   if (sbuf->end > sbuf->start)
   {

      if (block)
      {
         if (!socket_send_all_blocking(
                  sockfd, sbuf->data + sbuf->start, buf_used(sbuf), 1))
            return 0;
         sbuf->start = sbuf->end = 0;

      }
      else
      {
         sent = socket_send_all_nonblocking(sockfd, sbuf->data + sbuf->start, buf_used(sbuf), 1);
         if (sent < 0)
            return 0;
         sbuf->start += sent;

         if (sbuf->start == sbuf->end)
            sbuf->start = sbuf->end = 0;

      }

   }
   else
   {

      if (block)
      {
         if (!socket_send_all_blocking(sockfd, sbuf->data + sbuf->start, sbuf->bufsz - sbuf->start, 1))
            return 0;
         sbuf->start = 0;
         return netplay_send_flush(sbuf, sockfd, 1);

      }
      else
      {
         sent = socket_send_all_nonblocking(sockfd, sbuf->data + sbuf->start, sbuf->bufsz - sbuf->start, 1);
         if (sent < 0)
            return 0;
         sbuf->start += sent;

         if (sbuf->start >= sbuf->bufsz)
         {
            sbuf->start = 0;
            return netplay_send_flush(sbuf, sockfd, 0);

         }

      }

   }

   return 1;
}
