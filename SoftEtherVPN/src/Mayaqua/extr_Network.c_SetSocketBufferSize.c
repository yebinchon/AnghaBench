
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ SOCKET ;


 scalar_t__ INVALID_SOCKET ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,char*,int) ;

bool SetSocketBufferSize(SOCKET s, bool send, UINT size)
{
 int value = (int)size;

 if (s == INVALID_SOCKET)
 {
  return 0;
 }

 if (setsockopt(s, SOL_SOCKET, (send ? SO_SNDBUF : SO_RCVBUF), (char *)&value, sizeof(int)) != 0)
 {
  return 0;
 }

 return 1;
}
