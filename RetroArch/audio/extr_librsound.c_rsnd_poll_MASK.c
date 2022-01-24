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
struct pollfd {int dummy; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct pollfd*,int,int) ; 

__attribute__((used)) static int FUNC2(struct pollfd *fd, int numfd, int timeout)
{
   for(;;)
   {
      if ( FUNC1(fd, numfd, timeout) < 0 )
      {
         if ( errno == EINTR )
            continue;

         FUNC0("poll");
         return -1;
      }
      return 0;
   }
}