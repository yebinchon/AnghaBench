
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int size ;
typedef int hash ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int Size; int * Buf; } ;
typedef int IO ;
typedef TYPE_1__ BUF ;


 int Endian32 (int) ;
 int FileWrite (int *,int *,int) ;
 int MD5_SIZE ;
 int Md5 (int *,int *,int) ;

bool BufToFile(IO *o, BUF *b)
{
 UCHAR hash[MD5_SIZE];
 UINT size;


 if (o == ((void*)0) || b == ((void*)0))
 {
  return 0;
 }


 Md5(hash, b->Buf, b->Size);

 size = Endian32(b->Size);


 if (FileWrite(o, &size, sizeof(size)) == 0)
 {
  return 0;
 }


 if (FileWrite(o, hash, sizeof(hash)) == 0)
 {
  return 0;
 }


 if (FileWrite(o, b->Buf, b->Size) == 0)
 {
  return 0;
 }

 return 1;
}
