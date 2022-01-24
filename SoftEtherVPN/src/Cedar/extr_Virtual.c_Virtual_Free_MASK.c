#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int Active; int /*<<< orphan*/  Logger; int /*<<< orphan*/  Cancel; int /*<<< orphan*/ * SendQueue; } ;
typedef  TYPE_1__ VH ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

void FUNC15(VH *v)
{
	// Release the DHCP server
	FUNC3(v);

	// NAT release
	FUNC7(v);

	FUNC10(v);
	{
		// Release the IP combining list
		FUNC4(v);

		// Release the IP waiting table
		FUNC5(v);

		// Release the ARP waiting table
		FUNC1(v);

		// Release the ARP table
		FUNC0(v);

		// Release the transmission queue
		FUNC9(v->SendQueue);
		{
			BLOCK *block;

			// Release all queues
			while ((block = FUNC8(v->SendQueue)))
			{
				FUNC2(block);
			}
		}
		FUNC13(v->SendQueue);
		FUNC12(v->SendQueue);
		v->SendQueue = NULL;

		// Release the cancel object
		FUNC11(v->Cancel);

		v->Active = false;
	}
	FUNC14(v);

	// Release the logger
	FUNC6(v->Logger);
}