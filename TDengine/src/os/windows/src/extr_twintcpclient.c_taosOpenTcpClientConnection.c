
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tError (char*) ;

void *taosOpenTcpClientConnection(void *shandle, void *thandle, char *ip, short port) {
  tError("OpenTcpClientConnection not support in windows");
  return 0;
}
