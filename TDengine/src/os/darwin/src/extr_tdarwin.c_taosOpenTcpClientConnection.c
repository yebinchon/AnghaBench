
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int tError (char*) ;

void *taosOpenTcpClientConnection(void *shandle, void *thandle, char *ip, short port) {
  tError("function taosOpenTcpClientConnection is not implemented in darwin system, exit!");
  exit(0);
}
