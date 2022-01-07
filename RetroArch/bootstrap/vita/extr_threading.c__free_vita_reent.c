
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _newlib_reent_mutex ;
 int sceKernelDeleteMutex (int ) ;

void _free_vita_reent(void) {
 sceKernelDeleteMutex(_newlib_reent_mutex);
}
