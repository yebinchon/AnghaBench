#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_10__ {int Halting; int /*<<< orphan*/  FileList; int /*<<< orphan*/  OpenCloseLock; } ;
struct TYPE_9__ {int /*<<< orphan*/  NumBoundAdapters; } ;
struct TYPE_8__ {int IsClosePending; TYPE_4__* Device; scalar_t__ UnbindContext; } ;
struct TYPE_7__ {int FinalWakeUp; int /*<<< orphan*/  Event; } ;
typedef  TYPE_1__ SL_FILE ;
typedef  TYPE_2__ SL_ADAPTER ;
typedef  scalar_t__ NDIS_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_3__* sl ; 

void FUNC13(NDIS_HANDLE protocol_binding_context)
{
	SL_ADAPTER *a = (SL_ADAPTER *)protocol_binding_context;
	NDIS_HANDLE unbind_context = a->UnbindContext;
	bool is_pending = a->IsClosePending;
	UINT j;

	if (is_pending)
	{
		FUNC1(unbind_context);
	}

	for (j = 0;j < 32;j++)
	{
		if (a->Device != NULL)
		{
			a->Device->Halting = true;

			// Wait until the number of file handles that are associated with this device becomes zero
			while (true)
			{
				UINT num_files = 0;

				FUNC7(a->Device->OpenCloseLock);
				{
					FUNC8(a->Device->FileList);
					{
						UINT i;
						num_files = FUNC3(a->Device->FileList);

						for (i = 0;i < num_files;i++)
						{
							// Hit the associated event
							SL_FILE *f = FUNC2(a->Device->FileList, i);

							if (f->FinalWakeUp == false)
							{
								FUNC9(f->Event);
								f->FinalWakeUp = true;
							}
						}
					}
					FUNC12(a->Device->FileList);
				}
				FUNC11(a->Device->OpenCloseLock);

				if (num_files == 0)
				{
					break;
				}

				FUNC10(50);
			}
		}
	}

	// Release the device
	if (a->Device != NULL)
	{
		// Delete the file list
		FUNC6(a->Device->FileList);

		FUNC5(a->Device);
		a->Device = NULL;
	}

	// Release the SL_ADAPTER
	FUNC4(a);

	if (is_pending)
	{
		FUNC0(&sl->NumBoundAdapters);
	}
}