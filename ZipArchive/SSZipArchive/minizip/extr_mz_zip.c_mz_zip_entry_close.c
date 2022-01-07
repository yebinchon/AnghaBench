
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int UINT64_MAX ;
 int mz_zip_entry_close_raw (void*,int ,int ) ;

int32_t mz_zip_entry_close(void *handle)
{
    return mz_zip_entry_close_raw(handle, UINT64_MAX, 0);
}
