
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MALLOC_CAP_DEFAULT ;
 int MALLOC_CAP_INTERNAL ;
 int MALLOC_CAP_SPIRAM ;
 void* heap_caps_malloc_prefer (int ,int,int,int) ;
 void* malloc (unsigned int) ;
 int size ;

void* ff_memalloc (
    unsigned msize
)
{




    return malloc(msize);

}
