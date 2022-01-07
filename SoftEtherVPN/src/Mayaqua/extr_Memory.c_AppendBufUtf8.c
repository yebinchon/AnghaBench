
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
typedef int BUF ;


 scalar_t__ CalcUniToUtf8 (int *) ;
 int Free (int *) ;
 int UniToUtf8 (int *,scalar_t__,int *) ;
 int WriteBuf (int *,int *,scalar_t__) ;
 int * ZeroMalloc (scalar_t__) ;

void AppendBufUtf8(BUF *b, wchar_t *str)
{
 UINT size;
 UCHAR *data;

 if (b == ((void*)0) || str == ((void*)0))
 {
  return;
 }

 size = CalcUniToUtf8(str) + 1;
 data = ZeroMalloc(size);

 UniToUtf8(data, size, str);

 WriteBuf(b, data, size - 1);

 Free(data);
}
