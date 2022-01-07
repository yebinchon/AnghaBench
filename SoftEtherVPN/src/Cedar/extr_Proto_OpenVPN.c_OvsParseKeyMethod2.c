
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_13__ {int Current; } ;
struct TYPE_12__ {int* PreMasterSecret; int* Random1; int* Random2; struct TYPE_12__* PeerInfo; struct TYPE_12__* Password; struct TYPE_12__* Username; struct TYPE_12__* OptionString; } ;
typedef TYPE_1__ OPENVPN_KEY_METHOD_2 ;
typedef TYPE_2__ BUF ;


 int FreeBuf (TYPE_2__*) ;
 TYPE_2__* NewBuf () ;
 scalar_t__ OvsReadStringFromBuf (TYPE_2__*,TYPE_1__*,int) ;
 int ReadBuf (TYPE_2__*,int*,int) ;
 int SeekBuf (TYPE_2__*,int ,int ) ;
 int WriteBuf (TYPE_2__*,int*,int) ;
 int Zero (TYPE_1__*,int) ;

UINT OvsParseKeyMethod2(OPENVPN_KEY_METHOD_2 *ret, UCHAR *data, UINT size, bool client_mode)
{
 BUF *b;
 UINT read_size = 0;
 UINT ui;
 UCHAR uc;

 Zero(ret, sizeof(OPENVPN_KEY_METHOD_2));
 if (ret == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return 0;
 }

 b = NewBuf();
 WriteBuf(b, data, size);
 SeekBuf(b, 0, 0);


 if (ReadBuf(b, &ui, sizeof(UINT)) == sizeof(UINT))
 {

  if (ReadBuf(b, &uc, sizeof(UCHAR)) == sizeof(UCHAR) && uc == 2)
  {

   if (client_mode == 0 || ReadBuf(b, ret->PreMasterSecret, sizeof(ret->PreMasterSecret)) == sizeof(ret->PreMasterSecret))
   {

    if (ReadBuf(b, ret->Random1, sizeof(ret->Random1)) == sizeof(ret->Random1))
    {

     if (ReadBuf(b, ret->Random2, sizeof(ret->Random2)) == sizeof(ret->Random2))
     {

      if (OvsReadStringFromBuf(b, ret->OptionString, sizeof(ret->OptionString)) &&
       OvsReadStringFromBuf(b, ret->Username, sizeof(ret->Username)) &&
       OvsReadStringFromBuf(b, ret->Password, sizeof(ret->Password)))
       {
        if (!OvsReadStringFromBuf(b, ret->PeerInfo, sizeof(ret->PeerInfo)))
        {
         Zero(ret->PeerInfo, sizeof(ret->PeerInfo));
        }
       read_size = b->Current;
      }
     }
    }
   }
  }
 }

 FreeBuf(b);

 return read_size;
}
