
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTHREAD_TLS_INDEX ;
 int pthread_local_storage_thread_deleted_callback (int ,void*) ;
 void* pvTaskGetThreadLocalStoragePointer (int *,int ) ;
 int vTaskSetThreadLocalStoragePointer (int *,int ,int *) ;
 int vTaskSetThreadLocalStoragePointerAndDelCallback (int *,int ,int *,int *) ;

void pthread_internal_local_storage_destructor_callback(void)
{
    void *tls = pvTaskGetThreadLocalStoragePointer(((void*)0), PTHREAD_TLS_INDEX);
    if (tls != ((void*)0)) {
        pthread_local_storage_thread_deleted_callback(PTHREAD_TLS_INDEX, tls);






        vTaskSetThreadLocalStoragePointerAndDelCallback(((void*)0),
                                                        PTHREAD_TLS_INDEX,
                                                        ((void*)0),
                                                        ((void*)0));

    }
}
