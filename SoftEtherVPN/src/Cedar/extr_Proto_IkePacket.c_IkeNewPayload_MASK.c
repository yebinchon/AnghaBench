#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/  PayloadType; } ;
typedef  TYPE_1__ IKE_PACKET_PAYLOAD ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

IKE_PACKET_PAYLOAD *FUNC1(UINT payload_type)
{
	IKE_PACKET_PAYLOAD *p;

	p = FUNC0(sizeof(IKE_PACKET_PAYLOAD));

	p->PayloadType = payload_type;

	return p;
}