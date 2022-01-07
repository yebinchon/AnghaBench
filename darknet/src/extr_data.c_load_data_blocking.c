
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct load_args {int dummy; } ;
typedef struct load_args load_args ;


 struct load_args* calloc (int,int) ;
 int load_thread (struct load_args*) ;

void load_data_blocking(load_args args)
{
    struct load_args *ptr = calloc(1, sizeof(struct load_args));
    *ptr = args;
    load_thread(ptr);
}
