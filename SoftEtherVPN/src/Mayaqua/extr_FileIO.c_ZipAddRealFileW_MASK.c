#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  ZIP_PACKER ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC4(ZIP_PACKER *p, char *name, UINT64 dt, UINT attribute, wchar_t *srcname)
{
	BUF *b;
	// Validate arguments
	if (p == NULL || FUNC1(name) || srcname == NULL)
	{
		return false;
	}

	b = FUNC2(srcname);
	if (b == NULL)
	{
		return false;
	}

	FUNC3(p, name, dt, attribute, b->Buf, b->Size);

	FUNC0(b);

	return true;
}