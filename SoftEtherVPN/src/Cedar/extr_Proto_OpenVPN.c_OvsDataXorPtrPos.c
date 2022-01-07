
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;



void OvsDataXorPtrPos(void *data, const UINT size)
{
 UINT i;
 UCHAR *buf;

 if (data == ((void*)0) || size == 0)
 {
  return;
 }

 for (i = 0, buf = data; i < size; i++, buf++)
 {
  *buf = *buf ^ i + 1;
 }
}
