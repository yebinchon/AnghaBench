
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;
typedef int pthread_t ;


 int pthread_create (int *,int *,int ,int *) ;
 int pthread_detach (int ) ;
 int sem_destroy (int *) ;
 int sem_init (int *,int ,int ) ;
 int sem_wait (int *) ;
 int xlib_threadf ;

__attribute__((used)) static void xlib_init(void)
{
 pthread_t x_thread;
 sem_t xlib_sem;

 sem_init(&xlib_sem, 0, 0);

 pthread_create(&x_thread, ((void*)0), xlib_threadf, &xlib_sem);
 pthread_detach(x_thread);

 sem_wait(&xlib_sem);
 sem_destroy(&xlib_sem);
}
