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
struct socket_buffer {size_t bufsz; size_t end; size_t data; } ;

/* Variables and functions */
 size_t FUNC0 (struct socket_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct socket_buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,void const*,size_t,int) ; 

bool FUNC4(struct socket_buffer *sbuf, int sockfd, const void *buf,
   size_t len)
{
   if (FUNC0(sbuf) < len)
   {
      /* Need to force a blocking send */
      if (!FUNC2(sbuf, sockfd, true))
         return false;
   }

   if (FUNC0(sbuf) < len)
   {
      /* Can only be that this is simply too big for our buffer, in which case
       * we just need to do a blocking send */
      if (!FUNC3(sockfd, buf, len, false))
         return false;
      return true;
   }

   /* Copy it into our buffer */
   if (sbuf->bufsz - sbuf->end < len)
   {
      /* Half at a time */
      size_t chunka = sbuf->bufsz - sbuf->end,
             chunkb = len - chunka;
      FUNC1(sbuf->data + sbuf->end, buf, chunka);
      FUNC1(sbuf->data, (const unsigned char *) buf + chunka, chunkb);
      sbuf->end = chunkb;

   }
   else
   {
      /* Straight in */
      FUNC1(sbuf->data + sbuf->end, buf, len);
      sbuf->end += len;

   }

   return true;
}