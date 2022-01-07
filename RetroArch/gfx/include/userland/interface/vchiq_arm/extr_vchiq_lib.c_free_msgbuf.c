
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* free_msgbufs ;
 int vchiq_lib_mutex ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static void
free_msgbuf(void *buf)
{
   vcos_mutex_lock(&vchiq_lib_mutex);
   *(void **)buf = free_msgbufs;
   free_msgbufs = buf;
   vcos_mutex_unlock(&vchiq_lib_mutex);
}
