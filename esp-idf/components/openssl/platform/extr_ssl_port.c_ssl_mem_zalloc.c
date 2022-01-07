
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;

void *ssl_mem_zalloc(size_t size)
{
    void *p = malloc(size);

    if (p)
        memset(p, 0, size);

    return p;
}
