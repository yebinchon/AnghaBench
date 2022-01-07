
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tError (char*) ;

void taosCleanUpTcpClient(void *chandle) {
  tError("SendTcpClientData not support in windows");
}
