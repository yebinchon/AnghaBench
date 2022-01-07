
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_once (int *,int ) ;
 int taos_init_imp ;
 int tscinit ;

void taos_init() { pthread_once(&tscinit, taos_init_imp); }
