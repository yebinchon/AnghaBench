#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct TYPE_3__ {int /*<<< orphan*/ * s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC1(const struct sockaddr_storage *a,
                        const struct sockaddr_storage *b)
{
    if (a->ss_family != b->ss_family)
        return 1;
    if (a->ss_family == AF_INET) {
        return (((const struct sockaddr_in *)a)->sin_addr.s_addr !=
                ((const struct sockaddr_in *)b)->sin_addr.s_addr);
    }

#if HAVE_STRUCT_SOCKADDR_IN6
    if (a->ss_family == AF_INET6) {
        const uint8_t *s6_addr_a = ((const struct sockaddr_in6 *)a)->sin6_addr.s6_addr;
        const uint8_t *s6_addr_b = ((const struct sockaddr_in6 *)b)->sin6_addr.s6_addr;
        return memcmp(s6_addr_a, s6_addr_b, 16);
    }
#endif
    return 1;
}