
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_free (void*) ;

void ff_png_zfree(void *opaque, void *ptr)
{
    av_free(ptr);
}
