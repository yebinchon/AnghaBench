
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zlib_filefunc64_def ;
typedef int unzFile ;


 int mz_stream_os_get_interface () ;
 int unzOpen2 (void const*,int *) ;

unzFile unzOpen64(const void *path)
{
    zlib_filefunc64_def pzlib = mz_stream_os_get_interface();
    return unzOpen2(path, &pzlib);
}
