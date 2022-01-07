
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int UINT ;
typedef int UCHAR ;


 int Endian16 (int) ;

bool IsNetbiosRegistrationPacket(UCHAR *buf, UINT size)
{

 if (buf == ((void*)0) || size == 0)
 {
  return 0;
 }

 if (size >= 4)
 {
  USHORT us = *((USHORT *)(buf + 2));

  us = Endian16(us);

  if (((us & 0x7800) >> 11) == 5)
  {
   return 1;
  }
 }

 return 0;
}
