
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {scalar_t__ end; scalar_t__ start; scalar_t__ data; scalar_t__ bufsz; scalar_t__ read; } ;
typedef int ssize_t ;


 size_t buf_unread (struct socket_buffer*) ;
 int memcpy (unsigned char*,scalar_t__,size_t) ;
 int socket_receive_all_blocking (int,unsigned char*,size_t) ;
 int socket_receive_all_nonblocking (int,int*,scalar_t__,scalar_t__) ;

ssize_t netplay_recv(struct socket_buffer *sbuf, int sockfd, void *buf,
   size_t len, bool block)
{
   bool error;
   ssize_t recvd;


   if (sbuf->end >= sbuf->start)
   {
      error = 0;
      recvd = socket_receive_all_nonblocking(sockfd, &error,
         sbuf->data + sbuf->end, sbuf->bufsz - sbuf->end -
         ((sbuf->start == 0) ? 1 : 0));
      if (recvd < 0 || error)
         return -1;
      sbuf->end += recvd;
      if (sbuf->end >= sbuf->bufsz)
      {
         sbuf->end = 0;
         error = 0;
         recvd = socket_receive_all_nonblocking(sockfd, &error, sbuf->data, sbuf->start - 1);
         if (recvd < 0 || error)
            return -1;
         sbuf->end += recvd;

      }

   }
   else
   {
      error = 0;
      recvd = socket_receive_all_nonblocking(sockfd, &error, sbuf->data + sbuf->end, sbuf->start - sbuf->end - 1);
      if (recvd < 0 || error)
         return -1;
      sbuf->end += recvd;

   }


   if (sbuf->end >= sbuf->read || (sbuf->bufsz - sbuf->read) >= len)
   {
      size_t unread = buf_unread(sbuf);
      if (len <= unread)
      {
         memcpy(buf, sbuf->data + sbuf->read, len);
         sbuf->read += len;
         if (sbuf->read >= sbuf->bufsz)
            sbuf->read = 0;
         recvd = len;

      }
      else
      {
         memcpy(buf, sbuf->data + sbuf->read, unread);
         sbuf->read += unread;
         if (sbuf->read >= sbuf->bufsz)
            sbuf->read = 0;
         recvd = unread;
      }
   }
   else
   {

      size_t chunka = sbuf->bufsz - sbuf->read,
             pchunklen = len - chunka,
             chunkb = (pchunklen >= sbuf->end) ? sbuf->end : pchunklen;
      memcpy(buf, sbuf->data + sbuf->read, chunka);
      memcpy((unsigned char *) buf + chunka, sbuf->data, chunkb);
      sbuf->read = chunkb;
      recvd = chunka + chunkb;
   }


   if (block)
   {
      sbuf->start = sbuf->read;
      if (recvd < 0 || recvd < (ssize_t) len)
      {
         if (!socket_receive_all_blocking(sockfd, (unsigned char *) buf + recvd, len - recvd))
            return -1;
         recvd = len;

      }
   }

   return recvd;
}
