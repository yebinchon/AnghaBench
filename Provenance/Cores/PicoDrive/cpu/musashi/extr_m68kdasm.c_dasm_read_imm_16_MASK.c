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
typedef  int uint ;

/* Variables and functions */
 int g_address_mask ; 
 int g_cpu_pc ; 
 size_t g_rawbasepc ; 
 int* g_rawop ; 
 int FUNC0 (int) ; 

__attribute__((used)) static uint FUNC1(uint advance)
{
	uint result;
	if (g_rawop)
		result = (g_rawop[g_cpu_pc + 0 - g_rawbasepc] << 8) |
		          g_rawop[g_cpu_pc + 1 - g_rawbasepc];
	else
		result = FUNC0(g_cpu_pc & g_address_mask) & 0xffff; // 0xff ???
	g_cpu_pc += advance;
	return result;
}