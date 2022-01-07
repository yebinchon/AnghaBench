
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tError (char*) ;

int taosSendTcpServerData(unsigned int ip, short port, char *data, int len, void *chandle) {
  tError("SendTcpServerData not support in windows");
  return 0;
}
