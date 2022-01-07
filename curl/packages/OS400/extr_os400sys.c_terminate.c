
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer_t ;


 scalar_t__ Curl_thread_buffer ;
 scalar_t__ buffer_threaded ;
 scalar_t__ buffer_undef ;
 int * locbufs ;
 int * pthread_getspecific (int ) ;
 int pthread_key_delete (int ) ;
 int pthread_setspecific (int ,void*) ;
 int thdbufdestroy (void*) ;
 int thdkey ;

__attribute__((used)) static void
terminate(void)

{
  if(Curl_thread_buffer == buffer_threaded) {
    locbufs = pthread_getspecific(thdkey);
    pthread_setspecific(thdkey, (void *) ((void*)0));
    pthread_key_delete(thdkey);
    }

  if(Curl_thread_buffer != buffer_undef) {
    thdbufdestroy((void *) locbufs);
    locbufs = (buffer_t *) ((void*)0);
    }

  Curl_thread_buffer = buffer_undef;
}
