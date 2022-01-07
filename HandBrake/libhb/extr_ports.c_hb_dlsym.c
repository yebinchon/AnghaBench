
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FARPROC ;


 int GetProcAddress (void*,char const*) ;
 void* dlsym (void*,char const*) ;

void * hb_dlsym(void *h, const char *name)
{



    void *p = dlsym(h, name);

    return p;
}
