
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zlib_filefunc64_def ;


 int mz_stream_os_get_interface () ;

void fill_win32_filefunc64W(zlib_filefunc64_def *pzlib_filefunc_def)
{

    if (pzlib_filefunc_def != ((void*)0))
        *pzlib_filefunc_def = mz_stream_os_get_interface();
}
