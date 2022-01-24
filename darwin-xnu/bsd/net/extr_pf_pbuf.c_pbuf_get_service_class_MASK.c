#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ pb_type; int /*<<< orphan*/  pb_mbuf; } ;
typedef  TYPE_1__ pbuf_t ;
typedef  int /*<<< orphan*/  mbuf_svc_class_t ;

/* Variables and functions */
 int /*<<< orphan*/  MBUF_SC_BE ; 
 scalar_t__ PBUF_TYPE_MBUF ; 
 scalar_t__ PBUF_TYPE_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

mbuf_svc_class_t
FUNC2(const pbuf_t *pbuf)
{

	if (pbuf->pb_type == PBUF_TYPE_MBUF)
		return FUNC1(pbuf->pb_mbuf);

	FUNC0(pbuf->pb_type == PBUF_TYPE_MEMORY);

	return (MBUF_SC_BE);
}