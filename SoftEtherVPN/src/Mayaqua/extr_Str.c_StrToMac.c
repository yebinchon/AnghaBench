
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_4__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 int Copy (int *,int ,int) ;
 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* StrToBin (char*) ;

bool StrToMac(UCHAR *mac_address, char *str)
{
 BUF *b;

 if (mac_address == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 b = StrToBin(str);
 if (b == ((void*)0))
 {
  return 0;
 }

 if (b->Size != 6)
 {
  FreeBuf(b);
  return 0;
 }

 Copy(mac_address, b->Buf, 6);

 FreeBuf(b);

 return 1;
}
