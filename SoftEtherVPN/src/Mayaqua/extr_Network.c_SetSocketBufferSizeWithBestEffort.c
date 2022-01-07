
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ SOCKET ;


 scalar_t__ INVALID_SOCKET ;
 scalar_t__ SetSocketBufferSize (scalar_t__,int,int) ;

UINT SetSocketBufferSizeWithBestEffort(SOCKET s, bool send, UINT size)
{

 if (s == INVALID_SOCKET)
 {
  return 0;
 }

 while (1)
 {
  if (SetSocketBufferSize(s, send, size))
  {
   return size;
  }

  size = (UINT)((double)size / 1.5);

  if (size <= 32767)
  {
   return 0;
  }
 }
}
