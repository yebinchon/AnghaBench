
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int * PayloadList; } ;
struct TYPE_8__ {int * PayloadList; } ;
struct TYPE_10__ {TYPE_3__ Proposal; TYPE_2__ Sa; } ;
struct TYPE_11__ {int PayloadType; TYPE_4__ Payload; TYPE_1__* BitArray; } ;
struct TYPE_7__ {int Size; } ;
typedef int LIST ;
typedef TYPE_5__ IKE_PACKET_PAYLOAD ;


 int Debug (char*,char*,int,int,int ) ;


 TYPE_5__* LIST_DATA (int *,int) ;
 int LIST_NUM (int *) ;
 int MAX_SIZE ;
 int MakeCharArray2 (char*,char,int) ;

void IkeDebugPrintPayloads(LIST *o, UINT depth)
{
 UINT i;
 char space[MAX_SIZE];

 if (o == ((void*)0))
 {
  return;
 }

 MakeCharArray2(space, ' ', depth * 2);

 for (i = 0;i < LIST_NUM(o);i++)
 {
  IKE_PACKET_PAYLOAD *payload = LIST_DATA(o, i);

  Debug("%s%u: Type = %u, Size = %u\n", space, i, payload->PayloadType, payload->BitArray->Size);

  switch (payload->PayloadType)
  {
  case 128:
   IkeDebugPrintPayloads(payload->Payload.Sa.PayloadList, depth + 1);
   break;

  case 129:
   IkeDebugPrintPayloads(payload->Payload.Proposal.PayloadList, depth + 1);
   break;
  }
 }
}
