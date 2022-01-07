
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int p1 ;
struct TYPE_8__ {int Size; int Revision; int Type; } ;
struct TYPE_10__ {char PoolTag; int DataSize; int fAllocateNetBuffer; int ProtocolId; TYPE_1__ Header; } ;
struct TYPE_9__ {int NetBufferListPool; int NetBufferList; } ;
typedef TYPE_2__ PACKET_BUFFER ;
typedef TYPE_3__ NET_BUFFER_LIST_POOL_PARAMETERS ;


 int NDIS_OBJECT_TYPE_DEFAULT ;
 int NDIS_PROTOCOL_ID_DEFAULT ;
 int NDIS_SIZEOF_NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1 ;
 int NEO_MAX_PACKET_SIZE ;
 int NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1 ;
 int NdisAllocateNetBufferList (int ,int ,int ) ;
 int NdisAllocateNetBufferListPool (int *,TYPE_3__*) ;
 int NeoZero (TYPE_3__*,int) ;
 TYPE_2__* NeoZeroMalloc (int) ;
 int TRUE ;

PACKET_BUFFER *NeoNewPacketBuffer()
{
 PACKET_BUFFER *p;
 NET_BUFFER_LIST_POOL_PARAMETERS p1;


 p = NeoZeroMalloc(sizeof(PACKET_BUFFER));


 NeoZero(&p1, sizeof(p1));
 p1.Header.Type = NDIS_OBJECT_TYPE_DEFAULT;
 p1.Header.Revision = NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1;
 p1.Header.Size = NDIS_SIZEOF_NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1;
 p1.ProtocolId = NDIS_PROTOCOL_ID_DEFAULT;
 p1.fAllocateNetBuffer = TRUE;
 p1.DataSize = NEO_MAX_PACKET_SIZE;
 p1.PoolTag = 'SETH';
 p->NetBufferListPool = NdisAllocateNetBufferListPool(((void*)0), &p1);


 p->NetBufferList = NdisAllocateNetBufferList(p->NetBufferListPool, 0, 0);

 return p;
}
