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
typedef  size_t UINT ;
struct TYPE_2__ {int /*<<< orphan*/ ** PacketBuffer; } ;

/* Variables and functions */
 size_t NEO_MAX_PACKET_EXCHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ctx ; 

void FUNC1()
{
	UINT i;
	for (i = 0;i < NEO_MAX_PACKET_EXCHANGE;i++)
	{
		FUNC0(ctx->PacketBuffer[i]);
		ctx->PacketBuffer[i] = NULL;
	}
}