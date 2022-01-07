
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct load_args {int dummy; } ;
typedef int pthread_t ;
typedef struct load_args load_args ;


 struct load_args* calloc (int,int) ;
 int error (char*) ;
 int load_thread ;
 scalar_t__ pthread_create (int *,int ,int ,struct load_args*) ;

pthread_t load_data_in_thread(load_args args)
{
    pthread_t thread;
    struct load_args *ptr = calloc(1, sizeof(struct load_args));
    *ptr = args;
    if(pthread_create(&thread, 0, load_thread, ptr)) error("Thread creation failed");
    return thread;
}
