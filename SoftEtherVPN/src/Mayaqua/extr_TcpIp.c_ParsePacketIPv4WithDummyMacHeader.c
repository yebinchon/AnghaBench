
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int UCHAR ;
typedef int PKT ;


 int Copy (int *,int *,scalar_t__) ;
 int Free (int *) ;
 int MAC_PROTO_IPV4 ;
 int * Malloc (scalar_t__) ;
 int * ParsePacket (int *,scalar_t__) ;
 int WRITE_USHORT (int *,int ) ;
 int Zero (int *,int) ;

PKT *ParsePacketIPv4WithDummyMacHeader(UCHAR *buf, UINT size)
{
 UCHAR *tmp;
 UINT tmp_size;
 PKT *ret;

 if (buf == ((void*)0))
 {
  return ((void*)0);
 }

 tmp_size = size + 14;
 tmp = Malloc(tmp_size);
 Zero(tmp, 12);
 WRITE_USHORT(tmp + 12, MAC_PROTO_IPV4);
 Copy(tmp + 14, buf, size);

 ret = ParsePacket(tmp, tmp_size);

 if (ret == ((void*)0))
 {
  Free(tmp);
 }

 return ret;
}
