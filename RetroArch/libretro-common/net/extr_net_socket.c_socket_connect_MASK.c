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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_SNDTIMEO ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int FUNC2(int fd, void *data, bool timeout_enable)
{
   struct addrinfo *addr = (struct addrinfo*)data;

#if !defined(_WIN32) && !defined(VITA) && !defined(WIIU) && !defined(_3DS)
   if (timeout_enable)
   {
      struct timeval timeout;
      timeout.tv_sec  = 4;
      timeout.tv_usec = 0;

      FUNC1(fd, SOL_SOCKET, SO_SNDTIMEO, (char*)&timeout, sizeof timeout);
   }
#endif

   return FUNC0(fd, addr->ai_addr, addr->ai_addrlen);
}