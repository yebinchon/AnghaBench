
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __vita_delete_thread_reent (int) ;
 int _newlib_reent_mutex ;
 int sceKernelLockMutex (int ,int,int *) ;
 int sceKernelUnlockMutex (int ,int) ;

int vitasdk_delete_thread_reent(int thid)
{
 int res = 0;

 sceKernelLockMutex(_newlib_reent_mutex, 1, ((void*)0));

 res = __vita_delete_thread_reent(thid);

 sceKernelUnlockMutex(_newlib_reent_mutex, 1);
 return res;
}
