
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int header ;
typedef int USHORT ;
typedef int UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_3__ {scalar_t__ NextPayload; int PayloadSize; } ;
typedef int LIST ;
typedef int IKE_PACKET_PAYLOAD ;
typedef TYPE_1__ IKE_COMMON_HEADER ;
typedef int BUF ;


 int Add (int *,int *) ;
 int Debug (char*,...) ;
 int Endian16 (int ) ;
 int FreeBuf (int *) ;
 scalar_t__ IKE_IS_SUPPORTED_PAYLOAD_TYPE (scalar_t__) ;
 scalar_t__ IKE_PAYLOAD_NONE ;
 int IkeFreePayloadList (int *) ;
 int * IkeParsePayload (scalar_t__,int *) ;
 int * MemToBuf (void*,int) ;
 int * NewListFast (int *) ;
 int ReadBuf (int *,TYPE_1__*,int) ;
 int * ReadBufFromBuf (int *,int) ;

LIST *IkeParsePayloadListEx(void *data, UINT size, UCHAR first_payload, UINT *total_read_size)
{
 LIST *o;
 BUF *b;
 UCHAR payload_type = first_payload;
 UINT total = 0;

 if (data == ((void*)0))
 {
  return ((void*)0);
 }

 o = NewListFast(((void*)0));
 b = MemToBuf(data, size);

 while (payload_type != IKE_PAYLOAD_NONE)
 {

  IKE_COMMON_HEADER header;
  USHORT payload_size;
  BUF *payload_data;
  IKE_PACKET_PAYLOAD *pay;

  if (ReadBuf(b, &header, sizeof(header)) != sizeof(header))
  {
   Debug("ISAKMP: Broken Packet (Invalid Payload Size)\n");

LABEL_ERROR:

   IkeFreePayloadList(o);
   o = ((void*)0);

   break;
  }

  total += sizeof(header);


  payload_size = Endian16(header.PayloadSize);

  if (payload_size < sizeof(header))
  {
   Debug("ISAKMP: Broken Packet (Invalid Payload Size)\n");
   goto LABEL_ERROR;
  }

  payload_size -= sizeof(header);


  payload_data = ReadBufFromBuf(b, payload_size);
  if (payload_data == ((void*)0))
  {

   Debug("ISAKMP: Broken Packet (Invalid Payload Data)\n");
   goto LABEL_ERROR;
  }

  total += payload_size;


  if (IKE_IS_SUPPORTED_PAYLOAD_TYPE(payload_type))
  {

   pay = IkeParsePayload(payload_type, payload_data);

   if (pay == ((void*)0))
   {
    FreeBuf(payload_data);
    Debug("ISAKMP: Broken Packet (Payload Data Parse Failed)\n");
    goto LABEL_ERROR;
   }

   Add(o, pay);
  }
  else
  {

   Debug("ISAKMP: Ignored Payload Type: %u\n", payload_type);
   pay = IkeParsePayload(payload_type, payload_data);

   if (pay == ((void*)0))
   {
    FreeBuf(payload_data);
    Debug("ISAKMP: Broken Packet (Payload Data Parse Failed)\n");
    goto LABEL_ERROR;
   }

   Add(o, pay);
  }

  payload_type = header.NextPayload;

  FreeBuf(payload_data);
 }

 FreeBuf(b);

 if (total_read_size != ((void*)0))
 {
  *total_read_size = total;
 }

 return o;
}
