
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int mz_stream_copy_stream (void*,int *,void*,int *,int ) ;

int32_t mz_stream_copy(void *target, void *source, int32_t len)
{
    return mz_stream_copy_stream(target, ((void*)0), source, ((void*)0), len);
}
