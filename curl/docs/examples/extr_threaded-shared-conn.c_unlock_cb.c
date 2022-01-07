
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_lock_data ;
typedef int CURL ;


 int connlock ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void unlock_cb(CURL *handle, curl_lock_data data,
                      void *userptr)
{
  (void)userptr;
  (void)handle;
  (void)data;
  pthread_mutex_unlock(&connlock);
}
