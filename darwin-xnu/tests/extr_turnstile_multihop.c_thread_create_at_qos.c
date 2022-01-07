
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qos_class_t ;
typedef int pthread_t ;
typedef int pthread_attr_t ;


 int PRIO_DARWIN_ROLE ;
 int PRIO_DARWIN_ROLE_UI_FOCAL ;
 int T_LOG (char*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_set_qos_class_np (int *,int ,int ) ;
 int pthread_create (int *,int *,void* (*) (void*),int *) ;
 int pthread_get_qos_class_np (int ,int *,int *) ;
 int setpriority (int ,int ,int ) ;

__attribute__((used)) static void
thread_create_at_qos(qos_class_t qos, void * (*function)(void *))
{
 qos_class_t qos_thread;
 pthread_t thread;
        pthread_attr_t attr;
 int ret;

 ret = setpriority(PRIO_DARWIN_ROLE, 0, PRIO_DARWIN_ROLE_UI_FOCAL);
 if (ret != 0) {
  T_LOG("set priority failed\n");
 }

        pthread_attr_init(&attr);
        pthread_attr_set_qos_class_np(&attr, qos, 0);
        pthread_create(&thread, &attr, function, ((void*)0));

 T_LOG("pthread created\n");
 pthread_get_qos_class_np(thread, &qos_thread, ((void*)0));
}
