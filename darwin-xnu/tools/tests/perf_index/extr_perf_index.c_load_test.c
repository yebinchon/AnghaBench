
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* setup ) (int,long long,int,void**) ;int (* execute ) (int,int,long long,int,void**) ;int (* cleanup ) (int,long long) ;char** error_str_ptr; } ;
typedef TYPE_1__ test_t ;


 int RTLD_LOCAL ;
 int RTLD_NOW ;
 void* dlopen (char*,int) ;
 void* dlsym (void*,char*) ;

int load_test(char* path, test_t* test) {
    void* handle;
    void* p;

    handle = dlopen(path, RTLD_NOW | RTLD_LOCAL);
    if(!handle) {
        return -1;
    }


    p = dlsym(handle, "setup");
    test->setup = (int (*)(int, long long, int, void **))p;

    p = dlsym(handle, "execute");
    test->execute = (int (*)(int, int, long long, int, void **))p;
    if(p == ((void*)0))
        return -1;

    p = dlsym(handle, "cleanup");
    test->cleanup = (int (*)(int, long long))p;

    p = dlsym(handle, "error_str");
    test->error_str_ptr = (char**)p;

    return 0;
}
