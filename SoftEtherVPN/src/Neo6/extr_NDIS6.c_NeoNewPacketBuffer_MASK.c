#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  p1 ;
struct TYPE_8__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Revision; int /*<<< orphan*/  Type; } ;
struct TYPE_10__ {char PoolTag; int /*<<< orphan*/  DataSize; int /*<<< orphan*/  fAllocateNetBuffer; int /*<<< orphan*/  ProtocolId; TYPE_1__ Header; } ;
struct TYPE_9__ {int /*<<< orphan*/  NetBufferListPool; int /*<<< orphan*/  NetBufferList; } ;
typedef  TYPE_2__ PACKET_BUFFER ;
typedef  TYPE_3__ NET_BUFFER_LIST_POOL_PARAMETERS ;

/* Variables and functions */
 int /*<<< orphan*/  NDIS_OBJECT_TYPE_DEFAULT ; 
 int /*<<< orphan*/  NDIS_PROTOCOL_ID_DEFAULT ; 
 int /*<<< orphan*/  NDIS_SIZEOF_NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1 ; 
 int /*<<< orphan*/  NEO_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  TRUE ; 

PACKET_BUFFER *FUNC4()
{
	PACKET_BUFFER *p;
	NET_BUFFER_LIST_POOL_PARAMETERS p1;

	// Memory allocation
	p = FUNC3(sizeof(PACKET_BUFFER));

	// Create a NET_BUFFER_LIST pool
	FUNC2(&p1, sizeof(p1));
	p1.Header.Type = NDIS_OBJECT_TYPE_DEFAULT;
	p1.Header.Revision = NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1;
	p1.Header.Size = NDIS_SIZEOF_NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1;
	p1.ProtocolId = NDIS_PROTOCOL_ID_DEFAULT;
	p1.fAllocateNetBuffer = TRUE;
	p1.DataSize = NEO_MAX_PACKET_SIZE;
	p1.PoolTag = 'SETH';
	p->NetBufferListPool = FUNC1(NULL, &p1);

	// Create a NET_BUFFER_LIST
	p->NetBufferList = FUNC0(p->NetBufferListPool, 0, 0);

	return p;
}