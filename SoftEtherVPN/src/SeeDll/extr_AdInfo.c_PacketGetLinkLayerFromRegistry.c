
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
typedef int UINT ;
struct TYPE_8__ {int LinkType; int LinkSpeed; } ;
struct TYPE_7__ {int Length; scalar_t__ Data; int Oid; } ;
typedef TYPE_1__* PPACKET_OID_DATA ;
typedef int PACKET_OID_DATA ;
typedef TYPE_2__ NetType ;
typedef int LPADAPTER ;
typedef int BOOLEAN ;


 int FALSE ;
 int GMEM_MOVEABLE ;
 int GMEM_ZEROINIT ;
 TYPE_1__* GlobalAllocPtr (int,int) ;
 int GlobalFreePtr (TYPE_1__*) ;
 int ODS (char*) ;
 int ODSEx (char*,int) ;
 int OID_GEN_LINK_SPEED ;
 int OID_GEN_MEDIA_IN_USE ;
 int PacketRequest (int ,int ,TYPE_1__*) ;

BOOLEAN PacketGetLinkLayerFromRegistry(LPADAPTER AdapterObject, NetType *type)
{
    BOOLEAN Status;
    ULONG IoCtlBufferLength=(sizeof(PACKET_OID_DATA)+sizeof(ULONG)-1);
    PPACKET_OID_DATA OidData;

    OidData=GlobalAllocPtr(GMEM_MOVEABLE | GMEM_ZEROINIT,IoCtlBufferLength);
    if (OidData == ((void*)0)) {
        ODS("PacketGetLinkLayerFromRegistry failed\n");
        return FALSE;
    }

    OidData->Oid = OID_GEN_MEDIA_IN_USE;
    OidData->Length = sizeof (ULONG);
    Status = PacketRequest(AdapterObject,FALSE,OidData);
    type->LinkType=*((UINT*)OidData->Data);


    OidData->Oid = OID_GEN_LINK_SPEED;
    OidData->Length = sizeof (ULONG);
    Status = PacketRequest(AdapterObject,FALSE,OidData);
 type->LinkSpeed=*((UINT*)OidData->Data)*100;
    GlobalFreePtr (OidData);

 ODSEx("Media:%d\n",type->LinkType);
 ODSEx("Speed=%d\n",type->LinkSpeed);

    return Status;
}
