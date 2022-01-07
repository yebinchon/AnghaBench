
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int PKT ;


 int * ParsePacketEx2 (int *,int ,int,int ) ;

PKT *ParsePacketEx(UCHAR *buf, UINT size, bool no_l3)
{
 return ParsePacketEx2(buf, size, no_l3, 0);
}
