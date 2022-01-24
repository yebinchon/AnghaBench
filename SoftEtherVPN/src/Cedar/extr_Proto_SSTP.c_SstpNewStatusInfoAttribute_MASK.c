#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  SSTP_ATTRIBUTE ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  SSTP_ATTRIB_STATUS_INFO ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

SSTP_ATTRIBUTE *FUNC5(UCHAR attrib_id, UINT status)
{
	SSTP_ATTRIBUTE *a;
	UCHAR uc;
	BUF *b = FUNC1();

	uc = 0;
	FUNC3(b, &uc, 1);
	FUNC3(b, &uc, 1);
	FUNC3(b, &uc, 1);
	FUNC3(b, &attrib_id, 1);

	FUNC4(b, status);

	a = FUNC2(SSTP_ATTRIB_STATUS_INFO, b->Buf, b->Size);

	FUNC0(b);

	return a;
}