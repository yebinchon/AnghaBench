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
struct socket_buffer {size_t end; size_t start; scalar_t__ bufsz; } ;

/* Variables and functions */

__attribute__((used)) static size_t FUNC0(struct socket_buffer *sbuf)
{
   if (sbuf->end < sbuf->start)
   {
      size_t newend = sbuf->end;
      while (newend < sbuf->start)
         newend += sbuf->bufsz;
      return newend - sbuf->start;
   }

   return sbuf->end - sbuf->start;
}