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
typedef  int /*<<< orphan*/  VH ;
typedef  int UINT ;

/* Variables and functions */
 int FUNC0 (void*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int,int,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int,int,void*,int,int) ; 

void FUNC3(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, void *data, UINT size, bool dns_proxy, bool unicast)
{
	// Validate arguments
	if (data == NULL || v == NULL)
	{
		return;
	}

	// Ignore for NetBIOS name registration packet
	if (FUNC0(data, size) == false)
	{
		if (unicast == false)
		{
			dest_ip = 0xFFFFFFFF;
		}

		if (FUNC1(v, src_ip, src_port, dest_ip, dest_port, data, size) == false)
		{
			FUNC2(v, src_ip, src_port, dest_ip, dest_port, data, size, false);
		}
	}
}