
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int PKT ;


 int * ParsePacketEx (int *,int ,int) ;

PKT *ParsePacket(UCHAR *buf, UINT size)
{
 return ParsePacketEx(buf, size, 0);
}
