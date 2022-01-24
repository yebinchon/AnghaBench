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
struct in_addr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,struct in_addr*) ; 
 int FUNC1 (int,char const*,void*) ; 
 int FUNC2 (int,char const*,void*) ; 

int FUNC3(int af, const char *src, void *dst)
{
#if defined(VITA) || defined(__ORBIS__)
   return sceNetInetPton(af, src, dst);
#elif defined(GEKKO) || defined(_WIN32)
   /* TODO/FIXME - should use InetPton on Vista and later */
   return inet_aton(src, (struct in_addr*)dst);
#else
   return FUNC1(af, src, dst);
#endif
}