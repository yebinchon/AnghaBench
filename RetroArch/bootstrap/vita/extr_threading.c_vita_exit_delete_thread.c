
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit_thread_common (int,int ) ;
 int sceKernelExitDeleteThread ;

int vita_exit_delete_thread(int exit_status) {
 return _exit_thread_common(exit_status, sceKernelExitDeleteThread);
}
