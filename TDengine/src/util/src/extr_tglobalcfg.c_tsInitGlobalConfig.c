
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int doInitGlobalConfig ;
 int initGlobalConfig ;
 int pthread_once (int *,int ) ;

void tsInitGlobalConfig() {
  pthread_once(&initGlobalConfig, doInitGlobalConfig);
}
