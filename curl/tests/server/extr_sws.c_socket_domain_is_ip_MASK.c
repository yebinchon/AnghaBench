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

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int socket_domain ; 

__attribute__((used)) static bool FUNC0(void)
{
  switch(socket_domain) {
  case AF_INET:
#ifdef ENABLE_IPV6
  case AF_INET6:
#endif
    return true;
  default:
  /* case AF_UNIX: */
    return false;
  }
}