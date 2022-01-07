
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tError (char*) ;

void *taosInitTcpClient(char *ip, short port, char *label, int num, void *fp, void *shandle) {
  tError("InitTcpClient not support in windows");
  return 0;
}
