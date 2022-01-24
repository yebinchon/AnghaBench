#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  filter ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_24__ {int /*<<< orphan*/  NumPendingOidRequests; scalar_t__ Halt; } ;
struct TYPE_23__ {scalar_t__ DeviceExtension; } ;
struct TYPE_22__ {TYPE_1__* FileObject; } ;
struct TYPE_18__ {int /*<<< orphan*/  Status; } ;
struct TYPE_21__ {TYPE_2__ IoStatus; } ;
struct TYPE_20__ {TYPE_9__* Adapter; int /*<<< orphan*/  OpenCloseLock; int /*<<< orphan*/  FileList; scalar_t__ IsBasicDevice; } ;
struct TYPE_19__ {scalar_t__ NumSendingPackets; int /*<<< orphan*/  RecvLock; int /*<<< orphan*/  NetBufferListPool; struct TYPE_19__* Next; struct TYPE_19__* RecvPacketHead; int /*<<< orphan*/  Event; } ;
struct TYPE_17__ {TYPE_3__* FsContext; } ;
typedef  TYPE_3__ SL_PACKET ;
typedef  TYPE_3__ SL_FILE ;
typedef  TYPE_5__ SL_DEVICE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_6__ IRP ;
typedef  TYPE_7__ IO_STACK_LOCATION ;
typedef  TYPE_8__ DEVICE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  IO_NO_INCREMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OID_GEN_CURRENT_PACKET_FILTER ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

NTSTATUS FUNC16(DEVICE_OBJECT *device_object, IRP *irp)
{
	SL_DEVICE *dev = *((SL_DEVICE **)device_object->DeviceExtension);
	NTSTATUS ret = STATUS_UNSUCCESSFUL;
	IO_STACK_LOCATION *irp_stack = FUNC3(irp);

	if (dev->IsBasicDevice)
	{
		// Basic device
		ret = STATUS_SUCCESS;
	}
	else
	{
		// Adapter device
		SL_FILE *f = irp_stack->FileObject->FsContext;

		if (f != NULL)
		{
			bool clear_filter = false;

			// Wait until the number of packet being sent becomes the zero
			while (true)
			{
				if (f->NumSendingPackets == 0)
				{
					break;
				}

				FUNC13(50);
			}

			FUNC10(dev->OpenCloseLock);
			{
				// Delete the file from the list
				FUNC11(dev->FileList);
				{
					FUNC6(dev->FileList, f);

					if (FUNC5(dev->FileList) == 0)
					{
						// Clear the filter when all files are closed
						clear_filter = true;
					}
				}
				FUNC15(dev->FileList);

				if (dev->Adapter->Halt)
				{
					clear_filter = false;
				}

				if (clear_filter)
				{
					FUNC1(&dev->Adapter->NumPendingOidRequests);
				}
			}
			FUNC14(dev->OpenCloseLock);

			if (clear_filter)
			{
				// Clear the filter when all files are closed
				UINT filter = 0;
				FUNC12(dev->Adapter, true, OID_GEN_CURRENT_PACKET_FILTER, &filter, sizeof(filter));
				FUNC0(&dev->Adapter->NumPendingOidRequests);
			}

			// Release the event
			FUNC8(f->Event);

			// Release the receive queue
			if (true)
			{
				SL_PACKET *p = f->RecvPacketHead;

				while (p != NULL)
				{
					SL_PACKET *p_next = p->Next;

					FUNC7(p);

					p = p_next;
				}
			}

			// Release the NET_BUFFER_LIST pool
			FUNC4(f->NetBufferListPool);

			// Release the lock
			FUNC9(f->RecvLock);

			FUNC7(f);

			ret = STATUS_SUCCESS;
		}
	}

	irp->IoStatus.Status = ret;
	FUNC2(irp, IO_NO_INCREMENT);

	return ret;
}