
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_lock_data ;
typedef int curl_lock_access ;
typedef int CURL ;


 int connlock ;
 int pthread_mutex_lock (int *) ;

__attribute__((used)) static void lock_cb(CURL *handle, curl_lock_data data,
                    curl_lock_access access, void *userptr)
{
  (void)access;
  (void)userptr;
  (void)handle;
  (void)data;
  pthread_mutex_lock(&connlock);
}
