
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;



bool IsPriorityHighestPacketForQoS(void *data, UINT size)
{
 UCHAR *buf;

 if (data == ((void*)0))
 {
  return 0;
 }

 buf = (UCHAR *)data;
 if (size >= 16)
 {
  if (buf[12] == 0x08 && buf[13] == 0x00 && buf[15] != 0x00 && buf[15] != 0x08)
  {

   return 1;
  }

  if (size >= 34 && size <= 128)
  {
   if (buf[12] == 0x08 && buf[13] == 0x00 && buf[23] == 0x01)
   {

    return 1;
   }
  }
 }

 return 0;
}
