
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ AVBufferRef ;


 TYPE_1__* av_buffer_alloc (int) ;
 int memset (int ,int ,int) ;

AVBufferRef *av_buffer_allocz(int size)
{
    AVBufferRef *ret = av_buffer_alloc(size);
    if (!ret)
        return ((void*)0);

    memset(ret->data, 0, size);
    return ret;
}
