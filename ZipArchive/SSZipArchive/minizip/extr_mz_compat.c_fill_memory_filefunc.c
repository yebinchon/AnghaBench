
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zlib_filefunc_def ;


 int mz_stream_mem_get_interface () ;

void fill_memory_filefunc(zlib_filefunc_def *pzlib_filefunc_def)
{
    if (pzlib_filefunc_def != ((void*)0))
        *pzlib_filefunc_def = mz_stream_mem_get_interface();
}
