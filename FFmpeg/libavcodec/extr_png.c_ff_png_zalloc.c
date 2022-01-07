
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* av_mallocz_array (unsigned int,unsigned int) ;

void *ff_png_zalloc(void *opaque, unsigned int items, unsigned int size)
{
    return av_mallocz_array(items, size);
}
