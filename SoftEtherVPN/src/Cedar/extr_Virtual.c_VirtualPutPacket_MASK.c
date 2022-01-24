#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int flag1; int /*<<< orphan*/  Now; TYPE_1__* NativeNat; } ;
typedef  TYPE_2__ VH ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_12__ {int /*<<< orphan*/  Ref; } ;
struct TYPE_10__ {int SendStateChanged; int /*<<< orphan*/  Lock; TYPE_3__* HaltTube; } ;
typedef  TYPE_3__ TUBE ;
typedef  int /*<<< orphan*/  PKT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 

bool FUNC12(VH *v, void *data, UINT size)
{
	if (data == NULL)
	{
		// Flush
		v->flag1 = false;

		if (v->NativeNat != NULL)
		{
			if (v->NativeNat->SendStateChanged)
			{
				TUBE *halt_tube = NULL;

				FUNC3(v->NativeNat->Lock);
				{
					if (v->NativeNat->HaltTube != NULL)
					{
						halt_tube = v->NativeNat->HaltTube;

						FUNC0(halt_tube->Ref);
					}
				}
				FUNC9(v->NativeNat->Lock);

				if (halt_tube != NULL)
				{
					FUNC8(halt_tube, true);

					v->NativeNat->SendStateChanged = false;

					FUNC6(halt_tube);
				}
			}
		}
	}
	else
	{
		// Interpret the received packet
		PKT *packet = FUNC5(data, size);

		if (v->flag1 == false)
		{
			v->flag1 = true;
			v->Now = FUNC7();
		}

		// Lock the entire virtual machine in here
		FUNC4(v);
		{
			if (packet != NULL)
			{
				// Process the Layer-2
				FUNC11(v, packet);

				// Release the packet structure
				FUNC2(packet);
			}
		}
		FUNC10(v);

		FUNC1(data);
	}

	return true;
}