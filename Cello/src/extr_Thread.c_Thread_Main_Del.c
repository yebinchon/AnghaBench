
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Exception_Main ;
 int Thread_Main ;
 int del_raw (int ) ;

__attribute__((used)) static void Thread_Main_Del(void) {
  del_raw(Exception_Main);
  del_raw(Thread_Main);
}
