
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zlib_filefunc64_def ;
typedef int zipFile ;


 int mz_stream_os_get_interface () ;
 int zipOpen2 (char const*,int,int *,int *) ;

zipFile zipOpen(const char *path, int append)
{
    zlib_filefunc64_def pzlib = mz_stream_os_get_interface();
    return zipOpen2(path, append, ((void*)0), &pzlib);
}
