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
struct socket_buffer {scalar_t__ end; scalar_t__ start; scalar_t__ data; scalar_t__ bufsz; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct socket_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int,scalar_t__,scalar_t__,int) ; 

bool FUNC3(struct socket_buffer *sbuf, int sockfd, bool block)
{
   ssize_t sent;

   if (FUNC0(sbuf) == 0)
      return true;

   if (sbuf->end > sbuf->start)
   {
      /* Usual case: Everything's in order */
      if (block)
      {
         if (!FUNC1(
                  sockfd, sbuf->data + sbuf->start, FUNC0(sbuf), true))
            return false;
         sbuf->start = sbuf->end = 0;

      }
      else
      {
         sent = FUNC2(sockfd, sbuf->data + sbuf->start, FUNC0(sbuf), true);
         if (sent < 0)
            return false;
         sbuf->start += sent;

         if (sbuf->start == sbuf->end)
            sbuf->start = sbuf->end = 0;

      }

   }
   else
   {
      /* Unusual case: Buffer overlaps break */
      if (block)
      {
         if (!FUNC1(sockfd, sbuf->data + sbuf->start, sbuf->bufsz - sbuf->start, true))
            return false;
         sbuf->start = 0;
         return FUNC3(sbuf, sockfd, true);

      }
      else
      {
         sent = FUNC2(sockfd, sbuf->data + sbuf->start, sbuf->bufsz - sbuf->start, true);
         if (sent < 0)
            return false;
         sbuf->start += sent;

         if (sbuf->start >= sbuf->bufsz)
         {
            sbuf->start = 0;
            return FUNC3(sbuf, sockfd, false);

         }

      }

   }

   return true;
}