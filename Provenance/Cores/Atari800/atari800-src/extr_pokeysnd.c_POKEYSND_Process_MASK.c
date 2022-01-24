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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 

void FUNC3(void *sndbuffer, int sndn)
{
	FUNC0(sndbuffer, sndn);
#if defined(PBI_XLD) || defined (VOICEBOX)
	VOTRAXSND_Process(sndbuffer,sndn);
#endif
#if !defined(__PLUS) && !defined(ASAP)
	FUNC1((const unsigned char *)sndbuffer, sndn);
#endif
}