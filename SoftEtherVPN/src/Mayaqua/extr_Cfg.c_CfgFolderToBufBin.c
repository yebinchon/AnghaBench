
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int hash ;
typedef int UCHAR ;
struct TYPE_6__ {int Size; scalar_t__ Buf; } ;
typedef int FOLDER ;
typedef TYPE_1__ BUF ;


 int CfgOutputFolderBin (TYPE_1__*,int *) ;
 TYPE_1__* NewBuf () ;
 int SHA1_SIZE ;
 int Sha0 (int *,int *,int) ;
 int * TAG_BINARY ;
 int WriteBuf (TYPE_1__*,int *,int) ;
 int Zero (int *,int) ;

BUF *CfgFolderToBufBin(FOLDER *f)
{
 BUF *b;
 UCHAR hash[SHA1_SIZE];

 if (f == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();


 WriteBuf(b, TAG_BINARY, 8);


 Zero(hash, sizeof(hash));
 WriteBuf(b, hash, sizeof(hash));


 CfgOutputFolderBin(b, f);


 Sha0(((UCHAR *)b->Buf) + 8, ((UCHAR *)b->Buf) + 8 + SHA1_SIZE, b->Size - 8 - SHA1_SIZE);

 return b;
}
