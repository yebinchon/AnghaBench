#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* s6_addr16; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; TYPE_1__ sin6_addr; } ;
struct sockaddr {int sa_len; scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr const*,struct sockaddr*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(
	const struct sockaddr	*src,
	struct sockaddr			*dst,
	int						maxlen)
{
	if (src->sa_len > maxlen) return;

	FUNC1(src, dst, src->sa_len);
	if (src->sa_family == AF_INET6 &&
		src->sa_len >= sizeof(struct sockaddr_in6))
	{
		struct sockaddr_in6	*sin6 = (struct sockaddr_in6*)(void *)dst;
		if (FUNC0(&sin6->sin6_addr))
		{
			if (sin6->sin6_scope_id == 0)
				sin6->sin6_scope_id = FUNC2(sin6->sin6_addr.s6_addr16[1]);
			sin6->sin6_addr.s6_addr16[1] = 0;
		}
	}
}