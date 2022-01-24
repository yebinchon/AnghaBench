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
typedef  int /*<<< orphan*/  P12 ;
typedef  int /*<<< orphan*/  BUF ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BUF *FUNC4(P12 *p12)
{
	BIO *bio;
	BUF *buf;
	// Validate arguments
	if (p12 == NULL)
	{
		return NULL;
	}

	bio = FUNC2(p12);
	if (bio == NULL)
	{
		return NULL;
	}

	buf = FUNC0(bio);
	FUNC1(bio);

	FUNC3(buf, 0, 0);

	return buf;
}