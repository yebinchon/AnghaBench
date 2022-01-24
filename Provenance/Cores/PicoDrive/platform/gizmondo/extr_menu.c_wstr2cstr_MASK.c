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
typedef  char wchar_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 

__attribute__((used)) static void FUNC1(char *dst, const wchar_t *src)
{
	int i;
	for (i = FUNC0(src); i >= 0; i--)
		dst[i] = src[i];
}