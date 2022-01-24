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
typedef  int /*<<< orphan*/  uint32_t ;
struct in_addr {int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IFSCOPE_NONE ; 
 int /*<<< orphan*/  RTF_GATEWAY ; 
 int /*<<< orphan*/  RTM_ADD ; 
 int FUNC0 (int /*<<< orphan*/ ,struct in_addr,struct in_addr,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct in_addr router, boolean_t proxy_arp)
{
    uint32_t			flags = 0;
    struct in_addr		zeroes = { 0 };
    
    if (proxy_arp == FALSE) {
	flags |= RTF_GATEWAY;
    }
    return (FUNC0(RTM_ADD, zeroes, router, zeroes, flags, IFSCOPE_NONE));
}