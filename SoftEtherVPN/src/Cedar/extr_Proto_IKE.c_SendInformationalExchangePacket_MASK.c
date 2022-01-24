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
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  int /*<<< orphan*/  IKE_PACKET_PAYLOAD ;
typedef  int /*<<< orphan*/  IKE_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(IKE_SERVER *ike, IKE_CLIENT *c, IKE_PACKET_PAYLOAD *payload)
{
	FUNC0(ike, c, payload, false, 0, 0);
}