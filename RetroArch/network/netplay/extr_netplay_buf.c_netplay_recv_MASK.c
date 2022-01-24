#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct socket_buffer {scalar_t__ end; scalar_t__ start; scalar_t__ data; scalar_t__ bufsz; scalar_t__ read; } ;
typedef  int ssize_t ;

/* Variables and functions */
 size_t FUNC0 (struct socket_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char*,size_t) ; 
 int FUNC3 (int,int*,scalar_t__,scalar_t__) ; 

ssize_t FUNC4(struct socket_buffer *sbuf, int sockfd, void *buf,
   size_t len, bool block)
{
   bool error;
   ssize_t recvd;

   /* Receive whatever we can into the buffer */
   if (sbuf->end >= sbuf->start)
   {
      error = false;
      recvd = FUNC3(sockfd, &error,
         sbuf->data + sbuf->end, sbuf->bufsz - sbuf->end -
         ((sbuf->start == 0) ? 1 : 0));
      if (recvd < 0 || error)
         return -1;
      sbuf->end += recvd;
      if (sbuf->end >= sbuf->bufsz)
      {
         sbuf->end = 0;
         error = false;
         recvd = FUNC3(sockfd, &error, sbuf->data, sbuf->start - 1);
         if (recvd < 0 || error)
            return -1;
         sbuf->end += recvd;

      }

   }
   else
   {
      error = false;
      recvd = FUNC3(sockfd, &error, sbuf->data + sbuf->end, sbuf->start - sbuf->end - 1);
      if (recvd < 0 || error)
         return -1;
      sbuf->end += recvd;

   }

   /* Now copy it into the reader */
   if (sbuf->end >= sbuf->read || (sbuf->bufsz - sbuf->read) >= len)
   {
      size_t unread = FUNC0(sbuf);
      if (len <= unread)
      {
         FUNC1(buf, sbuf->data + sbuf->read, len);
         sbuf->read += len;
         if (sbuf->read >= sbuf->bufsz)
            sbuf->read = 0;
         recvd = len;

      }
      else
      {
         FUNC1(buf, sbuf->data + sbuf->read, unread);
         sbuf->read += unread;
         if (sbuf->read >= sbuf->bufsz)
            sbuf->read = 0;
         recvd = unread;
      }
   }
   else
   {
      /* Our read goes around the edge */
      size_t chunka = sbuf->bufsz - sbuf->read,
             pchunklen = len - chunka,
             chunkb = (pchunklen >= sbuf->end) ? sbuf->end : pchunklen;
      FUNC1(buf, sbuf->data + sbuf->read, chunka);
      FUNC1((unsigned char *) buf + chunka, sbuf->data, chunkb);
      sbuf->read = chunkb;
      recvd      = chunka + chunkb;
   }

   /* Perhaps block for more data */
   if (block)
   {
      sbuf->start = sbuf->read;
      if (recvd < 0 || recvd < (ssize_t) len)
      {
         if (!FUNC2(sockfd, (unsigned char *) buf + recvd, len - recvd))
            return -1;
         recvd = len;

      }
   }

   return recvd;
}