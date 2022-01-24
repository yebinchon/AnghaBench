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
typedef  int wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_6__ {int HamMode; int /*<<< orphan*/ * HamBuf; int /*<<< orphan*/  NameW; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ IO ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int) ; 

IO *FUNC7(wchar_t *name, bool write_mode, bool read_lock)
{
	wchar_t tmp[MAX_SIZE];
	// Validate arguments
	if (name == NULL)
	{
		return NULL;
	}

	FUNC2(tmp, sizeof(tmp), name);

	if (name[0] == L'|')
	{
		IO *o = FUNC6(sizeof(IO));
		name++;
		FUNC4(o->NameW, sizeof(o->NameW), name);
		FUNC5(o->Name, sizeof(o->Name), o->NameW);
		o->HamMode = true;
		o->HamBuf = FUNC3(name);
		if (o->HamBuf == NULL)
		{
			FUNC1(o);
			return NULL;
		}
		return o;
	}
	else
	{
		return FUNC0(tmp, write_mode, read_lock);
	}
}