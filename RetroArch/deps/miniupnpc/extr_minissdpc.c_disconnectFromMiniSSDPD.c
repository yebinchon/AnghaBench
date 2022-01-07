
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MINISSDPC_SOCKET_ERROR ;
 int MINISSDPC_SUCCESS ;
 scalar_t__ close (int) ;

int
disconnectFromMiniSSDPD(int s)
{
 if (close(s) < 0)
  return MINISSDPC_SOCKET_ERROR;
 return MINISSDPC_SUCCESS;
}
