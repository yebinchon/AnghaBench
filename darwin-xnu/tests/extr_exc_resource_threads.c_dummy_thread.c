
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sleep (int) ;

__attribute__((used)) static void*
dummy_thread(void *arg) {
#pragma unused(arg)
 while (1) {
  sleep(60);
 }
}
