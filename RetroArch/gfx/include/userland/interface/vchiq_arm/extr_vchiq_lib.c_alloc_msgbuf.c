
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSGBUF_SIZE ;
 void* free_msgbufs ;
 int vchiq_lib_mutex ;
 void* vcos_malloc (int ,char*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static void *
alloc_msgbuf(void)
{
   void *msgbuf;
   vcos_mutex_lock(&vchiq_lib_mutex);
   msgbuf = free_msgbufs;
   if (msgbuf)
      free_msgbufs = *(void **)msgbuf;
   vcos_mutex_unlock(&vchiq_lib_mutex);
   if (!msgbuf)
      msgbuf = vcos_malloc(MSGBUF_SIZE, "alloc_msgbuf");
   return msgbuf;
}
