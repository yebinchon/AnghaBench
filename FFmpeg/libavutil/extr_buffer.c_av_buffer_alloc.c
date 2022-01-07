
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVBufferRef ;


 int * av_buffer_create (int *,int,int ,int *,int ) ;
 int av_buffer_default_free ;
 int av_freep (int **) ;
 int * av_malloc (int) ;

AVBufferRef *av_buffer_alloc(int size)
{
    AVBufferRef *ret = ((void*)0);
    uint8_t *data = ((void*)0);

    data = av_malloc(size);
    if (!data)
        return ((void*)0);

    ret = av_buffer_create(data, size, av_buffer_default_free, ((void*)0), 0);
    if (!ret)
        av_freep(&data);

    return ret;
}
