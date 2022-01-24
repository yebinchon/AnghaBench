#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rtentry {int rt_flags; } ;
struct radix_node {int dummy; } ;
struct matchleaf_arg {scalar_t__ ifscope; } ;
struct TYPE_8__ {scalar_t__ sin6_scope_id; } ;
struct TYPE_7__ {scalar_t__ sin_scope_id; } ;
struct TYPE_6__ {int sa_family; } ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int RTF_IFSCOPE ; 
 TYPE_4__* FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (struct rtentry*) ; 

__attribute__((used)) static int
FUNC3(struct radix_node *rn, void *arg)
{
	struct rtentry *rt = (struct rtentry *)rn;
	struct matchleaf_arg *ma = arg;
	int af = FUNC2(rt)->sa_family;

	if (!(rt->rt_flags & RTF_IFSCOPE) || (af != AF_INET && af != AF_INET6))
		return (0);

	return (af == AF_INET ?
	    (FUNC1(FUNC2(rt))->sin_scope_id == ma->ifscope) :
	    (FUNC0(FUNC2(rt))->sin6_scope_id == ma->ifscope));
}