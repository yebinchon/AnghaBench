#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  x509; } ;
typedef  TYPE_1__ X ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MD5_SIZE ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 

void FUNC3(X *x, UCHAR *buf, bool sha1)
{
	// Validate arguments
	if (x == NULL)
	{
		return;
	}

	if (sha1 == false)
	{
		UINT size = MD5_SIZE;
		FUNC2(x->x509, FUNC0(), buf, (unsigned int *)&size);
	}
	else
	{
		UINT size = SHA1_SIZE;
		FUNC2(x->x509, FUNC1(), buf, (unsigned int *)&size);
	}
}