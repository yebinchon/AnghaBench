
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int BUF ;


 int ReadBuf (int *,int*,int) ;

bool NnReadDnsLabel(BUF *buf)
{
 UCHAR c;
 UCHAR tmp[256];

 if (buf == ((void*)0))
 {
  return 0;
 }

LABEL_START:

 if (ReadBuf(buf, &c, 1) != 1)
 {
  return 0;
 }

 if (c == 0)
 {
  return 1;
 }

 if (c & 0xC0)
 {

  if (ReadBuf(buf, &c, 1) != 1)
  {
   return 0;
  }
  else
  {
   return 1;
  }
 }
 else
 {

  if (ReadBuf(buf, tmp, c) != c)
  {
   return 0;
  }
  else
  {
   goto LABEL_START;
  }
 }

}
