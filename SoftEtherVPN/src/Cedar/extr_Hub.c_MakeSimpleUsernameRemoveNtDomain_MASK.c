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
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 

void FUNC2(char *dst, UINT dst_size, char *src)
{
	char tmp1[MAX_SIZE];
	char tmp2[MAX_SIZE];
	// Validate arguments
	if (dst == NULL || src == NULL)
	{
		return;
	}

	FUNC0(src, tmp1, sizeof(tmp1), tmp2, sizeof(tmp2), false);

	FUNC1(dst, dst_size, tmp1);
}