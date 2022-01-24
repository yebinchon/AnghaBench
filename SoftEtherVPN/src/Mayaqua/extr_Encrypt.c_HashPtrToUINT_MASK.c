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
typedef  int /*<<< orphan*/  ret ;
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int MD5_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void**,int) ; 

UINT FUNC2(void *p)
{
	UCHAR hash_data[MD5_SIZE];
	UINT ret;
	// Validate arguments
	if (p == NULL)
	{
		return 0;
	}

	FUNC1(hash_data, &p, sizeof(p));

	FUNC0(&ret, hash_data, sizeof(ret));

	return ret;
}