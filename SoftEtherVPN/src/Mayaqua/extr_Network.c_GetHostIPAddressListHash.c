
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
typedef int UINT64 ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_5__ {int Size; int Buf; } ;
typedef int LIST ;
typedef int IP ;
typedef TYPE_1__ BUF ;


 int Copy (int *,int *,int) ;
 int Endian64 (int ) ;
 int FreeBuf (TYPE_1__*) ;
 int FreeHostIPAddressList (int *) ;
 int * GetHostIPAddressList () ;
 int IPToStr (char*,int,int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 TYPE_1__* NewBuf () ;
 int SHA1_SIZE ;
 int Sha1 (int *,int ,int ) ;
 int WriteBufStr (TYPE_1__*,char*) ;
 int Zero (char*,int) ;

UINT64 GetHostIPAddressListHash()
{
 UINT i;
 LIST *o;
 BUF *buf = NewBuf();
 UCHAR hash[SHA1_SIZE];
 UINT64 ret = 0;

 o = GetHostIPAddressList();

 if (o != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   IP *ip = LIST_DATA(o, i);
   char tmp[128];

   Zero(tmp, sizeof(tmp));
   IPToStr(tmp, sizeof(tmp), ip);

   WriteBufStr(buf, tmp);
  }

  FreeHostIPAddressList(o);
 }

 WriteBufStr(buf, "test");

 Sha1(hash, buf->Buf, buf->Size);

 FreeBuf(buf);

 Copy(&ret, hash, sizeof(UINT64));

 ret = Endian64(ret);

 return ret;
}
