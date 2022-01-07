
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int name ;


 int get_pri (int ) ;
 int pthread_mach_thread_np (int ) ;
 int pthread_self () ;
 int pthread_setname_np (char*) ;
 int snprintf (char*,int,char*,char const*,int) ;

__attribute__((used)) static void
set_thread_name(const char *fn_name)
{
 char name[50] = "";

 thread_t thread_port = pthread_mach_thread_np(pthread_self());

 int pri = get_pri(thread_port);

 snprintf(name, sizeof(name), "%s at pri %2d", fn_name, pri);
 pthread_setname_np(name);
}
