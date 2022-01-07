
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MZ_OK ;
 int MZ_UNUSED (void*) ;

int32_t mz_stream_mem_error(void *stream)
{
    MZ_UNUSED(stream);


    return MZ_OK;
}
