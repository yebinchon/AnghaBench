
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UINT ;
typedef int UCHAR ;
struct TYPE_10__ {int Size; int Buf; } ;
struct TYPE_9__ {size_t NumEntry; size_t** Entry; int HashedValue; } ;
typedef TYPE_1__ ROUTE_TABLE ;
typedef size_t ROUTE_ENTRY ;
typedef TYPE_2__ BUF ;


 int Copy (int *,int *,int) ;
 int FreeBuf (TYPE_2__*) ;
 int MD5_SIZE ;
 int Md5 (int *,int ,int ) ;
 TYPE_2__* NewBuf () ;
 TYPE_1__* UnixGetRouteTable () ;
 TYPE_1__* Win32GetRouteTable () ;
 int WriteBuf (TYPE_2__*,size_t*,int) ;

ROUTE_TABLE *GetRouteTable()
{
 ROUTE_TABLE *t = ((void*)0);
 UINT i;
 BUF *buf = NewBuf();
 UCHAR hash[MD5_SIZE];




 t = UnixGetRouteTable();


 WriteBuf(buf, &t->NumEntry, sizeof(t->NumEntry));

 for (i = 0;i < t->NumEntry;i++)
 {
  ROUTE_ENTRY *e = t->Entry[i];

  WriteBuf(buf, e, sizeof(ROUTE_ENTRY));
 }

 Md5(hash, buf->Buf, buf->Size);

 FreeBuf(buf);

 Copy(&t->HashedValue, hash, sizeof(t->HashedValue));

 return t;
}
