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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  BUF ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,scalar_t__) ; 

BUF *FUNC7(BIO *bio)
{
	BUF *b;
	UINT size;
	void *tmp;
	// Validate arguments
	if (bio == NULL)
	{
		return NULL;
	}

	FUNC2(bio, 0);
	size = (UINT)FUNC0(bio);
	tmp = FUNC4(size);
	FUNC1(bio, tmp, size);

	b = FUNC5();
	FUNC6(b, tmp, size);
	FUNC3(tmp);

	return b;
}