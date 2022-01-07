
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thd_s {int mutex; int arg; int (* func ) (int ) ;} ;


 int hnd_key ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_setspecific (int ,void*) ;
 int stub1 (int ) ;

__attribute__((used)) static void *wrapper(void *hnd) {
    struct thd_s *hnds = (struct thd_s *)hnd;

    pthread_mutex_lock(&hnds->mutex);


    pthread_setspecific(hnd_key, hnd);
    hnds->func(hnds->arg);

    pthread_mutex_unlock(&hnds->mutex);

    return ((void*)0);
}
