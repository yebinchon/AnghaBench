
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int mz_stream_copy_stream_to_end (void*,int *,void*,int *) ;

int32_t mz_stream_copy_to_end(void *target, void *source)
{
    return mz_stream_copy_stream_to_end(target, ((void*)0), source, ((void*)0));
}
