
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;



void OvsDataReverse(void *data, const UINT size)
{
 UINT i;
 UCHAR tmp;
 UCHAR *buf_start, *buf_end;

 if (data == ((void*)0) || size < 3)
 {
  return;
 }

 for (i = 0, buf_start = (UCHAR *)data + 1, buf_end = (UCHAR *)data + (size - 1); i < (size - 1 ) / 2; i++, buf_start++, buf_end--)
 {
  tmp = *buf_start;
  *buf_start = *buf_end;
  *buf_end = tmp;
 }
}
