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
typedef  int UINT ;

/* Variables and functions */
 int NN_RAW_IP_PORT_END ; 
 int NN_RAW_IP_PORT_START ; 
 int FUNC0 () ; 

UINT FUNC1(bool raw_ip_mode)
{
	if (raw_ip_mode == false)
	{
		return 1025 + FUNC0() % (65500 - 1025);
	}
	else
	{
		return NN_RAW_IP_PORT_START + FUNC0() % (NN_RAW_IP_PORT_END - NN_RAW_IP_PORT_START);
	}
}