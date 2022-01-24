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
typedef  int /*<<< orphan*/  tmp ;
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int MD5_SIZE ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static char *FUNC3()
{
	char tmp[MD5_SIZE], *ret;
	UINT size;
	FUNC2(tmp, sizeof(tmp));
	size = sizeof(tmp)*2+1;
	ret = FUNC1(size);
	FUNC0(ret, size, tmp, sizeof(tmp));
	return ret;
}