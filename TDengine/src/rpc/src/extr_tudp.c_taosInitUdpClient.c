
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* taosInitUdpConnection (char*,short,char*,int,void*,void*) ;

void *taosInitUdpClient(char *ip, short port, char *label, int threads, void *fp, void *shandle) {
  return taosInitUdpConnection(ip, port, label, threads, fp, shandle);
}
