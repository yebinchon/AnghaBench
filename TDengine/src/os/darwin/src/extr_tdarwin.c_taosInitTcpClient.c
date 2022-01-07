
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int tError (char*) ;

void *taosInitTcpClient(char *ip, short port, char *flabel, int num, void *fp, void *shandle) {
  tError("function taosInitTcpClient is not implemented in darwin system, exit!");
  exit(0);
}
