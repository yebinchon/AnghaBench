
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int LoadLibraryA (char const*) ;
 int RTLD_LAZY ;
 int RTLD_LOCAL ;
 void* dlopen (char const*,int) ;

void * hb_dlopen(const char *name)
{



    void *h = dlopen(name, RTLD_LAZY | RTLD_LOCAL);


    return h;
}
