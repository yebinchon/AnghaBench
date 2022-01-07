
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;



bool OvsIsPacketForMe(const UCHAR *buf, const UINT size)
{
 if (buf == ((void*)0) || size != 2)
 {
  return 0;
 }

 if (buf[0] == 0x00 && buf[1] == 0x0E)
 {
  return 1;
 }

 return 0;
}
