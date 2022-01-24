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
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 char* FUNC0 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*,char*) ; 

__attribute__((used)) static const char *
FUNC2(struct in6_addr *src6,
		    struct in6_addr *dst6,
		    struct in6_addr *tgt6)
{
	static char buf[1024];
	FUNC1(buf, sizeof(buf), "(src=%s dst=%s tgt=%s)",
		FUNC0(src6), FUNC0(dst6), FUNC0(tgt6));
	return buf;
}