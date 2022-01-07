
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cothread_t ;


 int co_primary ;
 int * co_running ;

cothread_t co_active() {
  if(!co_running) co_running = &co_primary;
  return (cothread_t)co_running;
}
