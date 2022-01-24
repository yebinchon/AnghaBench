#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int USHORT ;
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_9__ {int VlanId; int UserPriority; int CanonicalFormatId; } ;
struct TYPE_14__ {TYPE_1__ TagHeader; scalar_t__ Value; } ;
struct TYPE_13__ {int Halt; int Ready; int SupportVLan; int /*<<< orphan*/ * AdapterHandle2; TYPE_2__* Device; int /*<<< orphan*/ * TmpBuffer; int /*<<< orphan*/ * AdapterHandle; } ;
struct TYPE_12__ {scalar_t__ NumRecvPackets; int /*<<< orphan*/  Event; int /*<<< orphan*/  RecvLock; TYPE_3__* RecvPacketTail; TYPE_3__* RecvPacketHead; } ;
struct TYPE_11__ {int* Data; struct TYPE_11__* Next; scalar_t__ Size; } ;
struct TYPE_10__ {int /*<<< orphan*/  FileList; scalar_t__ Halting; } ;
typedef  TYPE_3__ SL_PACKET ;
typedef  TYPE_4__ SL_FILE ;
typedef  TYPE_5__ SL_ADAPTER ;
typedef  int /*<<< orphan*/  NET_BUFFER_LIST ;
typedef  int /*<<< orphan*/  NET_BUFFER ;
typedef  int /*<<< orphan*/  NDIS_PORT_NUMBER ;
typedef  TYPE_6__ NDIS_NET_BUFFER_LIST_8021Q_INFO ;
typedef  scalar_t__ NDIS_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  Ieee8021QNetBufferListInfo ; 
 int /*<<< orphan*/  NDIS_RETURN_FLAGS_DISPATCH_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ SL_MAX_PACKET_QUEUED ; 
 int SL_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

void FUNC19(NDIS_HANDLE protocol_binding_context, NET_BUFFER_LIST *net_buffer_lists,
									 NDIS_PORT_NUMBER port_number, ULONG NumberOfNetBufferLists,
									 ULONG receive_flags)
{
	SL_ADAPTER *a = (SL_ADAPTER *)protocol_binding_context;
	UINT i;
	UINT return_flags = 0;
	NET_BUFFER_LIST *nbl;
	UCHAR *tmp_buffer;
	UINT tmp_size;

	if (net_buffer_lists == NULL || NumberOfNetBufferLists == 0)
	{
		return;
	}

	if (a->AdapterHandle2 == NULL)
	{
		a->AdapterHandle2 = a->AdapterHandle;
	}

	if (FUNC1(receive_flags))
	{
		FUNC0(return_flags, NDIS_RETURN_FLAGS_DISPATCH_LEVEL);
	}

	if (a->Halt || a->Device == NULL || a->Device->Halting || a->Ready == false || a->AdapterHandle == NULL)
	{
		goto LABEL_CLEANUP;
	}

	tmp_buffer = a->TmpBuffer;
	tmp_size = sizeof(a->TmpBuffer);

	nbl = net_buffer_lists;

	FUNC14(a->Device->FileList);
	{
		if (a->Halt == false)
		{
			for (i = 0;i < FUNC11(a->Device->FileList);i++)
			{
				// Lock the receive queue
				SL_FILE *f = FUNC10(a->Device->FileList, i);

				FUNC13(f->RecvLock);
			}

			while (nbl != NULL)
			{
				NET_BUFFER *nb = FUNC4(nbl);
				bool is_vlan = false;
				UCHAR vlan_tag[2];

				if (FUNC5(nbl, Ieee8021QNetBufferListInfo) != 0)
				{
					NDIS_NET_BUFFER_LIST_8021Q_INFO qinfo;
					qinfo.Value = FUNC5(nbl, Ieee8021QNetBufferListInfo);
					if (qinfo.TagHeader.VlanId != 0)
					{
						USHORT tag_us;
						is_vlan = true;

						a->SupportVLan = true;

						tag_us = (qinfo.TagHeader.UserPriority & 0x07 << 13) |
							(qinfo.TagHeader.CanonicalFormatId & 0x01 << 12) |
							(qinfo.TagHeader.VlanId & 0x0FFF);

						vlan_tag[0] = ((UCHAR *)(&tag_us))[1];
						vlan_tag[1] = ((UCHAR *)(&tag_us))[0];
					}
				}

				while (nb != NULL)
				{
					UINT size = FUNC3(nb);

					if (size >= 14 && size <= tmp_size && size <= (UINT)((is_vlan == false) ? SL_MAX_PACKET_SIZE : (SL_MAX_PACKET_SIZE - 4)))
					{
						UCHAR *ptr = FUNC8(nb, size, tmp_buffer, 1, 0);

						if (ptr != NULL)
						{
							// Insert the queue to all waiting files
							for (i = 0;i < FUNC11(a->Device->FileList);i++)
							{
								SL_FILE *f = FUNC10(a->Device->FileList, i);

								if (f->NumRecvPackets < SL_MAX_PACKET_QUEUED)
								{
									SL_PACKET *q = FUNC15(sizeof(SL_PACKET));

									if (is_vlan == false)
									{
										// Normal packet
										FUNC12(q->Data, ptr, size);
										q->Size = size;
									}
									else
									{
										// Insert a tag in the case of IEEE802.1Q packet
										FUNC12(q->Data, ptr, 12);
										q->Data[12] = 0x81;
										q->Data[13] = 0x00;
										FUNC12(&q->Data[14], vlan_tag, 2);
										FUNC12(&q->Data[16], &ptr[12], size - 12);

										q->Size = size + 4;
									}

									q->Next = NULL;

									if (f->RecvPacketHead == NULL)
									{
										f->RecvPacketHead = q;
									}
									else
									{
										f->RecvPacketTail->Next = q;
									}

									f->RecvPacketTail = q;

									f->NumRecvPackets++;
								}
							}
						}
					}

					nb = FUNC7(nb);
				}

				nbl = FUNC6(nbl);
			}

			// Hit the event
			for (i = 0;i < FUNC11(a->Device->FileList);i++)
			{
				SL_FILE *f = FUNC10(a->Device->FileList, i);

				// Unlock the receive queue
				FUNC17(f->RecvLock);

				FUNC16(f->Event);
			}
		}
	}
	FUNC18(a->Device->FileList);

LABEL_CLEANUP:

	if (FUNC2(receive_flags))
	{
		FUNC9(a->AdapterHandle2, net_buffer_lists, return_flags);
	}
}