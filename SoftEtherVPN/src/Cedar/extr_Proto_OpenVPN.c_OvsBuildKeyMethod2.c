
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_3__ {int* Random1; int* Random2; int PeerInfo; int Password; int Username; int OptionString; } ;
typedef TYPE_1__ OPENVPN_KEY_METHOD_2 ;
typedef int BUF ;


 int * NewBuf () ;
 int OvsWriteStringToBuf (int *,int ,int) ;
 int WriteBuf (int *,int*,int) ;
 int WriteBufInt (int *,int ) ;

BUF *OvsBuildKeyMethod2(OPENVPN_KEY_METHOD_2 *d)
{
 BUF *b;
 UCHAR uc;

 if (d == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();


 WriteBufInt(b, 0);


 uc = 2;
 WriteBuf(b, &uc, sizeof(UCHAR));


 WriteBuf(b, d->Random1, sizeof(d->Random1));


 WriteBuf(b, d->Random2, sizeof(d->Random2));


 OvsWriteStringToBuf(b, d->OptionString, sizeof(d->OptionString));


 OvsWriteStringToBuf(b, d->Username, sizeof(d->Username));


 OvsWriteStringToBuf(b, d->Password, sizeof(d->Password));


 OvsWriteStringToBuf(b, d->PeerInfo, sizeof(d->PeerInfo));

 return b;
}
