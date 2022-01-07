
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {size_t bufsz; size_t end; size_t data; } ;


 size_t buf_remaining (struct socket_buffer*) ;
 int memcpy (size_t,void const*,size_t) ;
 int netplay_send_flush (struct socket_buffer*,int,int) ;
 int socket_send_all_blocking (int,void const*,size_t,int) ;

bool netplay_send(struct socket_buffer *sbuf, int sockfd, const void *buf,
   size_t len)
{
   if (buf_remaining(sbuf) < len)
   {

      if (!netplay_send_flush(sbuf, sockfd, 1))
         return 0;
   }

   if (buf_remaining(sbuf) < len)
   {


      if (!socket_send_all_blocking(sockfd, buf, len, 0))
         return 0;
      return 1;
   }


   if (sbuf->bufsz - sbuf->end < len)
   {

      size_t chunka = sbuf->bufsz - sbuf->end,
             chunkb = len - chunka;
      memcpy(sbuf->data + sbuf->end, buf, chunka);
      memcpy(sbuf->data, (const unsigned char *) buf + chunka, chunkb);
      sbuf->end = chunkb;

   }
   else
   {

      memcpy(sbuf->data + sbuf->end, buf, len);
      sbuf->end += len;

   }

   return 1;
}
