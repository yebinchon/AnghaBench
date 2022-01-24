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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  scalar_t__ YabSock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  read_fds ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  write_fds ; 

int FUNC4(YabSock sock, int check_read, int check_write )
{
   fd_set *read_fds_ptr;
   fd_set *write_fds_ptr;
   struct timeval tv;
   int ret;

   FUNC1(&read_fds);
   FUNC1(&write_fds);

   // Let's see if we can even connect at this point
   if (check_read)
   {
      FUNC0(sock, &read_fds);
      read_fds_ptr = &read_fds;
   }
   else
      read_fds_ptr = NULL;

   if (check_write)
   {
      FUNC0(sock, &write_fds);
      write_fds_ptr = &write_fds;
   }
   else
      write_fds_ptr = NULL;

   tv.tv_sec = 0;
   tv.tv_usec = 0;

   if ((ret=FUNC3(sock+1, read_fds_ptr, write_fds_ptr, NULL, &tv)) < 1)
   {
      FUNC2("select: %d\n", ret);
      return -1;
   }

   return 0;
}