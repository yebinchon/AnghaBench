
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int UCHAR ;
typedef int BUF ;


 int WriteBuf (int *,void*,scalar_t__) ;
 int WriteBufChar (int *,int) ;
 int WriteBufInt (int *,scalar_t__) ;

void RadiusAddValue(BUF *b, UCHAR t, UINT v, UCHAR vt, void *data, UINT size)
{
 UINT len;

 if (b == ((void*)0) || (data == ((void*)0) && size != 0))
 {
  return;
 }


 WriteBufChar(b, t);


 len = 2 + size;
 if (t == 26)
 {
  len += 6;
 }
 WriteBufChar(b, (UCHAR)len);

 if (t != 26)
 {

  WriteBuf(b, data, size);
 }
 else
 {

  WriteBufInt(b, v);


  WriteBufChar(b, vt);


  len = size + 2;
  WriteBufChar(b, (UCHAR)len);


  WriteBuf(b, data, size);
 }
}
