
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int BUF ;


 int Free (int *) ;
 int * Malloc (int ) ;
 int * NewBuf () ;
 int ReadBuf (int *,int *,int ) ;
 int SeekBuf (int *,int ,int ) ;
 int WriteBuf (int *,int *,int ) ;

BUF *ReadBufFromBuf(BUF *b, UINT size)
{
 BUF *ret;
 UCHAR *data;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 data = Malloc(size);
 if (ReadBuf(b, data, size) != size)
 {
  Free(data);
  return ((void*)0);
 }

 ret = NewBuf();
 WriteBuf(ret, data, size);
 SeekBuf(ret, 0, 0);

 Free(data);

 return ret;
}
