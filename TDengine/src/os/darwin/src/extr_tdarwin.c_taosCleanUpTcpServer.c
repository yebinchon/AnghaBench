
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int tError (char*) ;

void taosCleanUpTcpServer(void *handle) {
  tError("function taosCleanUpTcpServer is not implemented in darwin system, exit!");
  exit(0);
}
