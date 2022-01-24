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
typedef  scalar_t__ UINT64 ;
typedef  void* UINT ;
struct TYPE_4__ {char* Name; scalar_t__ LineNumber; scalar_t__* FileName; int /*<<< orphan*/  CallStack; int /*<<< orphan*/  CreatedDate; void* Size; scalar_t__ Address; void* Id; } ;
typedef  TYPE_1__ TRACKING_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 void* obj_id ; 
 int /*<<< orphan*/  obj_id_lock ; 

void FUNC11(UINT64 addr, char *name, UINT size)
{
	TRACKING_OBJECT *o;
	UINT new_id;
	// Validate arguments
	if (addr == 0 || name == NULL)
	{
		return;
	}

	if ((FUNC3() && FUNC2()) == false)
	{
		// Don't track in detail if the memory check option is not specified
		return;
	}

	// Generate a new ID
	FUNC6(obj_id_lock);
	{
		new_id = ++obj_id;
	}
	FUNC8(obj_id_lock);

	o = FUNC7(sizeof(TRACKING_OBJECT));
	o->Id = new_id;
	o->Address = addr;
	o->Name = name;
	o->Size = size;
	o->CreatedDate = FUNC4();
	o->CallStack = FUNC10(FUNC0(), 2);

	o->FileName[0] = 0;
	o->LineNumber = 0;

	FUNC5();
	{
		FUNC1(o);
	}
	FUNC9();
}