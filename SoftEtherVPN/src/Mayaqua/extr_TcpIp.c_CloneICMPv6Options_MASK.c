#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* Mtu; void* Prefix; void* TargetLinkLayer; void* SourceLinkLayer; } ;
typedef  int /*<<< orphan*/  ICMPV6_OPTION_PREFIX ;
typedef  int /*<<< orphan*/  ICMPV6_OPTION_MTU ;
typedef  TYPE_1__ ICMPV6_OPTION_LIST ;
typedef  int /*<<< orphan*/  ICMPV6_OPTION_LINK_LAYER ;

/* Variables and functions */
 void* FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

void FUNC2(ICMPV6_OPTION_LIST *dst, ICMPV6_OPTION_LIST *src)
{
	// Validate arguments
	if (dst == NULL || src == NULL)
	{
		return;
	}

	FUNC1(dst, sizeof(ICMPV6_OPTION_LIST));

	dst->SourceLinkLayer = FUNC0(src->SourceLinkLayer, sizeof(ICMPV6_OPTION_LINK_LAYER));
	dst->TargetLinkLayer = FUNC0(src->TargetLinkLayer, sizeof(ICMPV6_OPTION_LINK_LAYER));
	dst->Prefix = FUNC0(src->Prefix, sizeof(ICMPV6_OPTION_PREFIX));
	dst->Mtu = FUNC0(src->Mtu, sizeof(ICMPV6_OPTION_MTU));
}