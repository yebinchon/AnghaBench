
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MZ_OPEN_MODE_WRITE ;
 int mz_zip_writer_open_int (void*,void*,int ) ;

int32_t mz_zip_writer_open(void *handle, void *stream)
{
    return mz_zip_writer_open_int(handle, stream, MZ_OPEN_MODE_WRITE);
}
